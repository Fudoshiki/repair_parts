import 'package:get/get.dart';
import 'package:repair_parts/routes/app_pages.dart';

class HomeController extends GetxController{

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3),(){
      Get.offAndToNamed(Routes.MAINBUYER);
    });
  }
}