import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:repair_parts/models/cart_products.dart';
import 'package:repair_parts/models/data_cart_products.dart';
import 'package:repair_parts/models/data_companies.dart';
import 'package:repair_parts/models/data_favorite.dart';
import 'package:repair_parts/models/data_order_request.dart';
import 'package:repair_parts/models/data_orders.dart';
import 'package:repair_parts/models/data_profile.dart';
import 'package:repair_parts/models/data_refund_exchange.dart';
import 'package:repair_parts/models/user.dart';
import 'package:repair_parts/moduls/buyer/message/controller/message_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ProfileController extends GetxController{
  BackendController backendController =Get.find();
  bool auth = false;

  var numberValid =false.obs;
  TextEditingController number = new TextEditingController();
  RxBool seller=false.obs;

  var opacity=0.obs;

  var time=0.obs;

  var sorted = "Все".obs;
  var phones = "";
  Timer? timer;
  RxInt start = 0.obs;
  DataProfile? dataProfile=new DataProfile();
  DataCompanies dataCompanies =new DataCompanies();
  DataFavorite dataFovorite=new DataFavorite();
  DataOrders dataOrders = new DataOrders();
  DataOrderRequest dataOrderRequest = new DataOrderRequest();
  DataRefundExchange dataRefundExchange = new DataRefundExchange();
  dynamic dataHistoryOrder;
  MessageController messageController =Get.put(MessageController());
  DataCartProducts dataCartProducts =new DataCartProducts();
  @override
  void onInit() {
    GetStorage storage =GetStorage();
    var token=storage.read("bearer_token");
    print("${token}");
    if(token!=null){
      auth=true;
      getUser();
    }
    number.addListener(() {
      var maskFormatter = new MaskTextInputFormatter(mask: '+## (###) ###-##-##');
      if(maskFormatter.unmaskText(number.text).length==12){

      }else{

      }
    });
  }

   getUser ()async{
    var user= await backendController.backend.requestGetUser();

   if(user!=null){
     this.dataProfile=user;
     String products="";
     List prod=[];
     this.dataProfile!.user!.cartProducts!.forEach((e) {
       print("productswwwwww${e.id}+,");
       products+="${jsonEncode(e.toJson())},";
       prod.add(jsonEncode(e.toJson()));
     });
     print("productswwwwww${products}");
     await Future.wait([
       backendController.backend.getCompanies(dataProfile!.user!.id),
       backendController.backend.getFavorities(),
       backendController.backend.getOrders(),
       backendController.backend.getProductCartProducts(prod),
       backendController.backend.getOrderRequest(),
       backendController.backend.getHistoryOrders(),
       backendController.backend.getRefundExchange()
     ]);
     print("productswwwwww${this.dataProfile!.user!.cartProducts!.length}");

     dataCompanies=backendController.backend.dataCompanies;
     dataFovorite=backendController.backend.dataFovorite;
     dataOrders=backendController.backend.dataOrders;
     dataCartProducts= backendController.backend.dataCartProducts;
     dataOrderRequest= backendController.backend.dataOrderRequest;
     dataHistoryOrder =backendController.backend.dataHistoryOrder;
     dataRefundExchange = backendController.backend.dataRefundExchange;
     Get.appUpdate();
   }else{
     auth=false;
   }

  }

  void exit() {
    GetStorage storage =GetStorage();
    auth=false;
    storage.erase();
    Get.forceAppUpdate();
    Get.back();

  }

  void getCode(phone,role,code) async{
    print("${role}");
    phones=phone;
    try{
    var user=  await backendController.backend.requestLogin(phone: phone,role: role,confirmCode: code);
      if(user!=null){
        await getUser();
        Get.forceAppUpdate();
      }
    }catch(e){
      print(e);
    }
    GetStorage storage =GetStorage();
    if(storage.read("bearer_token")!=null){
      auth=true;
      Get.forceAppUpdate();
    }
    const oneSec = const Duration(seconds: 1);
    start.value=60;
    Get.forceAppUpdate();
    timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start.value--;
        }
      },
    );
  }

  @override
  void onClose() {

  }

  void updateUser(String text, String text2, String text3, String text4, String text5) async{
   var user=await backendController.backend.requestPutUser(
      id: dataProfile!.user!.id,
      lastname: text,
      firstname: text2,
      middlename: text3,
      phone: text4,
      email: text5,
    );
   if(user!= null){
     dataProfile!.user=user;
     print(user.lastname);
     print(dataProfile!.user!.lastname);

   }else{
     Get.snackbar("User null", "");
   }
  }
}