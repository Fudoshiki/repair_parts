import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/screen/backet_screen.dart';
import 'package:repair_parts/moduls/backet/screen/backet_screen2.dart';
import 'package:repair_parts/moduls/backet/screen/pages/done_query.dart';
import 'package:repair_parts/moduls/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/choose_region.dart';
import 'package:repair_parts/moduls/main/screen/pages/choose_seller.dart';
import 'package:repair_parts/moduls/main/screen/pages/list_all_screen.dart';
import 'package:repair_parts/moduls/message/screen/message_screen.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen2.dart';
import 'package:repair_parts/moduls/product/controller/product_controller.dart';
import 'package:repair_parts/moduls/product/screen/product_screen.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/profile/screen/profile_screen.dart';
import 'package:repair_parts/moduls/query/screen/query_item_delete.dart';
import 'package:repair_parts/moduls/query/screen/query_item_screen.dart';
import '../component/bottom_item.dart';
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
  ProductController _productController = Get.find();


  @override
  void initState() {
    pages=[
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerMainPage,
        children: [
          CatalogScreen(),
          SearchPage(),
          ProductScreen(),
          ChooseCategory(),
          ChooseRegion(),
          ChooseSeller(),
        ],
      ),
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerOrderPage,
        children: [
          OrderScreen(),
          OrderScreen2()
        ],
      ),
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerBacketPage,
        children: [
          BacketScreen2(),
          ChooseRegion(),
          ChooseSeller(),
          DoneQuery(),
          BacketScreen(),
        ],
      ),
      MessageScreen(),
      PageView(
        physics :NeverScrollableScrollPhysics(),
        controller: _mainController.controllerProfilePage,
        children: [
          ProfileScreen(),
          QueryScreen(),
          QueryScreen2(),
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
        height: 50,
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