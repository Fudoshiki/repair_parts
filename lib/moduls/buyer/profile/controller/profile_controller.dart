import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ProfileController extends GetxController{
  BackendController backendController =Get.find();
  bool auth = false;

  var numberValid =false.obs;
  TextEditingController number = new TextEditingController();

  var opacity=0.obs;

  var time=0.obs;

  var sorted = "Все".obs;
  var phones = "";
  Timer? timer;
  RxInt start = 0.obs;

  @override
  void onInit() {
    GetStorage storage =GetStorage();
    var token=storage.read("bearer_token");
    if(token!=null){

    }
    number.addListener(() {
      var maskFormatter = new MaskTextInputFormatter(mask: '+## (###) ###-##-##');
      if(maskFormatter.unmaskText(number.text).length==12){

      }else{

      }
    });
  }

  void exit() {
    GetStorage storage =GetStorage();
    auth=false;
    storage.erase();
    Get.forceAppUpdate();
    Get.back();

  }

  void getCode(phone,role,code) async{
    phones=phone;
    await backendController.backend.requestLogin(phone: phone,role: role,confirmCode: code);
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
}