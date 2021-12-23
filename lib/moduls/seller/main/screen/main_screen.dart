import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/backet/screen/backet_screen.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/message/screen/message_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_orders/order_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/profile_screen.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/seller/main/controller/main_controller.dart';

import 'pages/choose_category.dart';
import 'pages/search_page_seller.dart';

class MainScreenSeller extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainScreenSellerState();
  }

}
class MainScreenSellerState extends State<MainScreenSeller>{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  MainControllerSeller _mainController =Get.find();


  @override
  void initState() {
    pages=[
      CatalogScreenSeller(),
      OrderScreen(),
      MessageScreen(),
      ProfileScreen(),
    ];
    setState(() {
    });
  }

  List<Widget> pages=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:         SizedBox(height: 70,


        child: CupertinoTabBar(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xffE7E7E7),
            ),
          ),
          onTap: _mainController.onIndexChanged,
          currentIndex: _mainController.currentIndex.value,
          backgroundColor: Colors.white,
          items: [
            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 0,
              "home_icon.png",
              18,
              text: "Главная",
            ),
            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 1,
              "orders_icon.png",
              18,
              text: "Заказы",
            ),

            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 2,
              "message_icon.png",
              18,
              text: "Диалоги",

            ),
            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 3,
              "profile_icon.png",
              18,
              text: "Кабинет",

            ),
          ],
        ),
      ),
      body: pages.length!=0?Container(
        width: Get.width,
        height: Get.height,
        child: PageView(
          physics :NeverScrollableScrollPhysics(),
          controller: _mainController.pageController,
          children: pages,
        ),
      ):Container(),
    );
  }

}