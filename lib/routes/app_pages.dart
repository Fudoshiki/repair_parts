import 'package:get/get.dart';
//START CONTROLLER
import '/moduls/product/binding/product_binding.dart';
import '/moduls/profile/binding/profile_binding.dart';
import '/moduls/catalog/binding/catalog_binding.dart';
import '/moduls/home/binding/home_binding.dart';
import '/moduls/main/binding/main_binding.dart';
//SCREENS
import '/moduls/home/screen/home_screen.dart';
import '/moduls/main/screen/main_screen.dart';
import '/moduls/profile/screen/profile_screen.dart';
import '/moduls/product/screen/product_screen.dart';
import '/moduls/catalog/screen/catalog_screen.dart';

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
        name: Routes.MAIN,
        page: () => MainScreen(),
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
    ];
  }
}
