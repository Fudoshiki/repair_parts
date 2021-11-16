import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/catalog/component/accompanying_item.dart';
import 'package:repair_parts/moduls/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/search_page.dart';

import '../component/catalog_item.dart';

class CatalogScreen extends StatelessWidget{
  MainController _mainController = Get.find();

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
        appBar: AppBar(
          backgroundColor: Color(0xffE6332A),
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            GestureDetector(
                child:Container(
                  padding: EdgeInsets.only(top: 12,bottom: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffE6332A),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 44,
                                width: Get.width-106,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white
                                ),
                                child: TextField(
                                  enabled: false,
                                  onTap: (){
                                  },
                                  decoration: InputDecoration(
                                      hintText: "Поиск запчастей",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff959595),
                                          fontFamily: "Roboto"

                                      ),
                                      prefixIcon: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 12
                                        ),
                                        width: 14,
                                        height: 14,
                                        child: Image.asset(
                                          "assets/image/search_icon.png",
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                  ),
                                )
                            ),

                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.symmetric(horizontal: 20),
                        height: 22,
                        width: 26,
                        child: Image.asset("assets/image/камера.png"),
                      )
                    ],
                  ),
                ),
                onTap:(){
                  _mainController.controllerMainPage.jumpToPage(1);
                }
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: (Get.width-50)/2,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 27,
                                height: 20,
                                child: Image.asset("assets/image/Group@2x.png"),
                              ),
                              SizedBox(
                                width: 8.8,
                              ),
                              Center(
                                child: Text(
                                  "Каталог",
                                  style: TextStyle(
                                      color: Color(0xffE6332A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: (Get.width-50)/2,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffFFE9E8),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 23,
                                height: 20,
                                child: Image.asset("assets/image/Group.png"),
                              ),
                              SizedBox(
                                width: 8.8,
                              ),
                              Center(
                                child: Text(
                                  "Запчасти",
                                  style: TextStyle(
                                      color: Color(0xffE6332A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3,
                                      fontFamily: "Roboto"

                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
                    return CatalogItems(el,true);
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
class CatalogItem{
  String image="";
  String title="";
  List array=[];

  CatalogItem(this.image, this.title, this.array);
}