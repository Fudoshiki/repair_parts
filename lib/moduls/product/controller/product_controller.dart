import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  dynamic product={
    "image":[
      "DSC_0211 2.png",
      "DSC_0211 2.png"
    ],
    "title":"Пружина распорная воздушного фильтра КАМАЗ",
    "arcticul":"Артикул: 5320-1109359",
    "brend":"Бренд: ХТЗ",
    "added_backet":true,
    "follow":true,
    "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
    "height":"130",
    "width":"130",
    "length":"130",
    "size":"0,4",
  };
  PageController pageController =new PageController();

  var countIndex =0.obs;

  @override
  void onInit() {

  }

  onPageChanged(i){
    countIndex.value=i;
    print(countIndex.value);
    print(i);
  }
}