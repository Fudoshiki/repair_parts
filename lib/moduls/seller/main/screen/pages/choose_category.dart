import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/catalog/component/accompanying_item.dart';
import 'package:repair_parts/moduls/buyer/catalog/component/catalog_item.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ChooseCategory extends StatelessWidget{
  MainController _mainController = Get.find();
  CatalogController _catalogController =Get.find();
  bool? bottom;
  ChooseCategory({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  BackendController backendController =Get.find();


  var accompanyings=[
    new CatalogItem(
        "accompanying1.png",
        "Подшипники",
        []),
    new CatalogItem(
        "accompanying2.png",
        "Инструменты",
        []),
    new CatalogItem(
        "accompanying3.png",
        "Автохимия",
        []),
    new CatalogItem(
        "accompanying4.png",
        "Масла",
        []),
    new CatalogItem(
        "accompanying5.png",
        "Аккумуляторы",
        []),
    new CatalogItem(
        "accompanying6.png",
        "Диски",
        []),
    new CatalogItem(
        "accompanying7.png",
        "Шины",
        []),
    new CatalogItem(
        "accompanying8.png",
        "Аксессуары",
        []),
    new CatalogItem(
        "accompanying9.png",
        "Лампы",
        []),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(height: 70,

          child: CupertinoTabBar(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Color(0xffE7E7E7),
              ),
            ),
            backgroundColor: Colors.white,
            items: [
              _bottomNavigationitem.showItem(
                true,
                "home_icon.png",
                18,
                text: "Главная",
              ),
              _bottomNavigationitem.showItem(
                false,
                "orders_icon.png",
                18,
                text: "Заказы",
              ),
              _bottomNavigationitem.showItem(
                false,
                "bascket_icon.png",
                18,
                text: "Корзина",

              ),
              _bottomNavigationitem.showItem(
                false,
                "message_icon.png",
                18,
                text: "Диалоги",

              ),
              _bottomNavigationitem.showItem(
                false,
                "profile_icon.png",
                18,
                text: "Кабинет",

              ),
            ],
          ),
        ):Container(
          height: 1,
        ),

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            GestureDetector(
                child:Container(
                  padding: EdgeInsets.only(left: 20,top: 12,bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back
                      )
                    ],
                  ),
                ),
                onTap:(){
                  try{
                    _mainController.controllerMainPage.jumpToPage(1);
                  }catch(e){
                    Get.back();
                  }
                }
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    margin: EdgeInsets.only(
                        bottom: 28
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Выбор категории",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff2E2E33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Выберите одну или несколько категорий",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2E2E33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    margin: EdgeInsets.only(
                        bottom: 6
                    ),
                    child: Text(
                      "Вид",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2E2E33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  ...backendController.dataAutoTypes.rows!.map((el){
                    return CatalogItems(el,false);
                  }),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    margin: EdgeInsets.only(
                        bottom: 7,top: 57
                    ),
                    child: Text(
                      "Сопутствующие товары",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff2E2E33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  ...accompanyings.map((el){
                    return AccompanyingItems(el);
                  }),
                  SizedBox(height: 20,)
                ],
              ),
            )
          ],
        )
    );
  }

}