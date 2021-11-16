import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  var currentIndex =0.obs;
  var currentIndexMainPage =0.obs;
  PageController controllerMainPage = new PageController(initialPage: 0);
  PageController pageController =new PageController(initialPage: 0);
  void onIndexChanged(input) {
    pageController.jumpToPage(input);
    currentIndex.value=input;
    Get.forceAppUpdate();
    Get.back();
  }
}