import 'package:get/get.dart';
import '../controller/backet_controller.dart';

class BacketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BacketController>(
          () => BacketController(),
    );

  }
}
