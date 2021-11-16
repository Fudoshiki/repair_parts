import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var product;
  PageController pageController =new PageController();

  var countIndex =0.obs;

  @override
  void onInit() {
    product=Get.arguments;
    print(Get.arguments);
  }

  onPageChanged(i){
    countIndex.value=i;
    print(countIndex.value);
    print(i);
  }
}