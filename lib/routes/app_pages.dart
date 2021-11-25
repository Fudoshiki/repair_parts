import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/backet/binding/backet_binding.dart';
import 'package:repair_parts/moduls/buyer/backet/screen/backet_screen.dart';
import 'package:repair_parts/moduls/buyer/message/binding/message_binding.dart';
import 'package:repair_parts/moduls/buyer/message/screen/message_screen.dart';
import 'package:repair_parts/moduls/buyer/orders/binding/order_binding.dart';
import 'package:repair_parts/moduls/buyer/orders/screen/order_screen.dart';
import 'package:repair_parts/moduls/seller/main/screen/main_screen.dart';
//START CONTROLLER
import '/moduls/buyer/product/binding/product_binding.dart';
import '/moduls/buyer/profile/binding/profile_binding.dart';
import '/moduls/buyer/catalog/binding/catalog_binding.dart';
import '/moduls/buyer/home/binding/home_binding.dart';
import '/moduls/buyer/main/binding/main_binding.dart';
//SCREENS
import '/moduls/buyer/home/screen/home_screen.dart';
import '/moduls/buyer/main/screen/main_screen.dart';
import '/moduls/buyer/profile/screen/profile_screen.dart';
import '/moduls/buyer/product/screen/product_screen.dart';
import '/moduls/buyer/catalog/screen/catalog_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  AppPages();

  getRoutes() {
    return [
      GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: Routes.MAINBUYER,
        page: () => MainScreen(),
        binding: MainBinding(),
      ),
      GetPage(
        name: Routes.MAINSELLER,
        page: () => MainScreenSeller(),
        binding: MainBinding(),
      ),
      GetPage(
        name: Routes.CATALOG,
        page: () => CatalogScreen(),
        binding: CatalogBinding(),
      ),
      GetPage(
        name: Routes.PROFILE,
        page: () => ProfileScreen(),
        binding: ProfileBinding(),
      ),
      GetPage(
        name: Routes.PRODUCT,
        page: () => ProductScreen(),
        binding: ProductBinding(),
      ),
      GetPage(
        name: Routes.BACKET,
        page: () => BacketScreen(),
        binding: BacketBinding(),
      ),
      GetPage(
        name: Routes.ORDERS,
        page: () => OrderScreen(),
        binding: OrderBinding(),
      ),
      GetPage(
        name: Routes.MESSAGE,
        page: () => MessageScreen(),
        binding: MessageBinding(),
      ),
    ];
  }
}
