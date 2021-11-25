import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import '../controller/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainControllerSeller>(
          () => MainControllerSeller(),
    );

  }
}
