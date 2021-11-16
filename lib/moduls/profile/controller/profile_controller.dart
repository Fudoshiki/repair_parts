import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  bool auth = true;

  var numberValid =false.obs;
  TextEditingController number = new TextEditingController();

  var opacity=0.obs;

  var time=0.obs;

  var sorted = "Все".obs;
}