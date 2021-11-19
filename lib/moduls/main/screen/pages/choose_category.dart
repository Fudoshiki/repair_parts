import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/catalog/component/accompanying_item.dart';
import 'package:repair_parts/moduls/catalog/component/catalog_item.dart';
import 'package:repair_parts/moduls/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';

class ChooseCategory extends StatelessWidget{
  MainController _mainController = Get.find();
  CatalogController _catalogController =Get.find();
  bool? bottom;
  ChooseCategory({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  List<CatalogItem> array =[
    new CatalogItem(
        "car.png",
        "Легковые",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "track.png",
        "Спецтехника",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "fur.png",
        "Грузовые",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "bus.png",
        "Автобусы",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "buse.png",
        "Автобусы",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "moto.png",
        "Мотоциклы",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
    new CatalogItem(
        "engine.png",
        "Двигатели",
        [
          "XCMG",
          "КАМАЗ",
          "ЛИАЗ",
          "МАЗ",
          "МТЛБ",
        ]),
  ];

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
        bottomNavigationBar: bottom!=null? SizedBox(
          height: 50,
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
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E2E33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  ...array.map((el){
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