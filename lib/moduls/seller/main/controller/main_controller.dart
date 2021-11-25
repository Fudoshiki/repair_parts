import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainControllerSeller extends GetxController{
  var currentIndex =0.obs;
  var currentIndexMainPage =0.obs;
  PageController controllerProfilePage = new PageController(initialPage: 0);

  PageController controllerOrderPage = new PageController(initialPage: 0);

  PageController controllerBacketPage = new PageController(initialPage: 0);

  PageController controllerMainPage = new PageController(initialPage: 0);
  PageController pageController =new PageController(initialPage: 0);
  void onIndexChanged(input) {
    pageController.jumpToPage(input);
    currentIndex.value=input;
    Get.forceAppUpdate();
  }
}