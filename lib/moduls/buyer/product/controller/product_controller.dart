import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repair_parts/models/data_product_by_id.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ProductController extends GetxController{
  DataProductById? dataProductById;
  var countIndex =0.obs;
  BackendController backendController=Get.find();

  PageController pageController =new PageController();

  @override
  void onInit() {
   var id = Get.arguments;
   print("$id");
   getProductById(id);
  }

  getProductById(id)async{
    dataProductById=await backendController.backend.getDataProductById(id);
    Get.forceAppUpdate();
  }
  onPageChanged(i){
    countIndex.value=i;
    print(countIndex.value);
    print(i);
  }
}