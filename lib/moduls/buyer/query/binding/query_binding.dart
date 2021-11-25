import 'package:get/get.dart';
import '../controller/query_controller.dart';

class QueryItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QueryItemController>(
          () => QueryItemController(),
    );

  }
}
