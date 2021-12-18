import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

import 'moduls/buyer/catalog/controller/catalog_controller.dart';
import 'moduls/buyer/main/controller/main_controller.dart';
import 'moduls/buyer/product/controller/product_controller.dart';
import 'moduls/seller/main/controller/main_controller.dart';
import 'routes/app_pages.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Get.put<BackendController>(
    BackendController(),
    permanent: true,
  );
  // Get.put<BackendController>(
  //   BackendController(),
  //   permanent: true,
  // );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  Get.put<MainController>(
    MainController(),
    permanent: true,
  );
  Get.put<MainControllerSeller>(
    MainControllerSeller(),
    permanent: true,
  );

  Get.put<ProductController>(
    ProductController(),
    permanent: true,
  );
  Get.put<CatalogController>(
    CatalogController(),
    permanent: true,
  );


  runApp(
    ConnectivityAppWrapper(
      app: GetMaterialApp(
        smartManagement: SmartManagement.full,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ru', 'RU'),
          const Locale('ua', 'UA'),
          const Locale('en', 'EN'),
        ],


        theme: ThemeData(
          primaryColorBrightness: Brightness.light,
          fontFamily: "Roboto",
          primarySwatch: Colors.red,
        ),
        defaultTransition: Transition.rightToLeft,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages().getRoutes(),
      ),
    ),
  );
}
