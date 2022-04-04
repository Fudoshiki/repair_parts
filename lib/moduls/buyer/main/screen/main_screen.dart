import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/backet/screen/no_product_in_backet_screen.dart';
import 'package:repair_parts/moduls/buyer/backet/screen/backet_screen.dart';
import 'package:repair_parts/moduls/buyer/backet/screen/pages/done_query.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/choose_region.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/choose_seller.dart';
import 'package:repair_parts/moduls/buyer/message/screen/message_page.dart';
import 'package:repair_parts/moduls/buyer/message/screen/message_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_history_orders/history_orders.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_history_orders/no_history_order.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_orders/order_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_orders/no_order_screen.dart';
import 'package:repair_parts/moduls/buyer/product/screen/product_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_queries/query_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_queries/no_query_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/profile_screen.dart';
import 'package:repair_parts/moduls/buyer/query/screen/query_item_delete.dart';
import 'package:repair_parts/moduls/buyer/query/screen/query_item_screen.dart';

import 'pages/choose_category.dart';
import 'pages/search_page.dart';

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }

}
class MainScreenState extends State<MainScreen>{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  MainController _mainController =Get.find();
  ProfileController profileController =Get.put(ProfileController());

  @override
  void initState() {
    pages=[
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerMainPage,
        children: [
          CatalogScreen(),
          SearchPage(),
        ],
      ),
      profileController.dataOrders.count==0?NoOrderScreen():OrderScreen(),
      BacketScreen(),

      MessagePage(),
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerProfilePage,
        children: [
          ProfileScreen(),
          QueryItemScreen(),
          QueryItemDelete()
        ],
      ),
    ];

    setState(() {
    });
  }

  List<Widget> pages=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
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
              "bascket_icon.png",
              18,
              text: "Корзина",

            ),
            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 3,
              "message_icon.png",
              18,
              text: "Диалоги",

            ),
            _bottomNavigationitem.showItem(
              _mainController.currentIndex.value == 4,
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