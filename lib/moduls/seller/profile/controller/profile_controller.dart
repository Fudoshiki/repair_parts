import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/register_page.dart';

class ProfileControllerSeller extends GetxController{
  bool auth = true;

  var numberValid =false.obs;
  TextEditingController number = new TextEditingController();

  var opacity=0.obs;

  var time=0.obs;

  var sorted = "Все".obs;

  @override
  void onInit() {
    number.addListener(() {
      var maskFormatter = new MaskTextInputFormatter(mask: '+## (###) ###-##-##');
      if(maskFormatter.unmaskText(number.text).length==12){

      }else{

      }
    });
  }
}