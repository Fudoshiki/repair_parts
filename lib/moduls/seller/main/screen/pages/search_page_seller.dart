import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/item_row.dart';
import 'package:repair_parts/components_main/item_row_seller.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/add_address.dart';
import 'package:repair_parts/routes/app_pages.dart';
import 'package:image_picker/image_picker.dart';

class SearchPageSeller extends StatelessWidget{
  CatalogController catalogController =Get.find();
  MainController _mainController =Get.find();
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  SearchPageSeller({@required this.bottom});

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
      backgroundColor: Colors.white,
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
                    GestureDetector(
                      child: Container(
                        margin:EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      onTap: (){
                        try{
                          _mainController.controllerMainPage.jumpToPage(0);
                        }catch(e){
                          Get.back();
                        }
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                          height: 44,
                          width: Get.width-86,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Поиск запчастей",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff959595),
                                          fontFamily: "Roboto",

                                      ),
                                      enabledBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
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
                                  controller: catalogController.controllerSearch.value,
                                  onChanged: (t){
                                    catalogController.searchText.value=t;
                                  },
                                ),
                              ),
                              Obx(
                                  ()=>catalogController.searchText.value!=""?GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/image/cansel.png"),
                                    ),
                                    onTap: (){
                                      catalogController.searchText.value="";
                                      catalogController.controllerSearch.value.text="";
                                    },
                                  ):Container()
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              onTap:(){
              }
          ),
          Expanded(
            child: ListView(
              children: [
                Obx(
                    ()=>catalogController.searchText.value!=""
                        ?Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 37,
                          bottom: 25
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            width: Get.width-40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/image/no_search.png"),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          bottom: 15
                                        ),
                                        child: Text(
                                          "По вашему запросу ничего найдено",
                                          style: TextStyle(
                                            color: Color(0xff2E2E33),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto"
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: Get.width-138,

                                        child: Text(
                                          "Не нашли что искали? Найдем за вас! Заполните форму для уточнения деталей запроса.",
                                          style: TextStyle(
                                              color: Color(0xff2E2E33),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto",
                                            height: 1.4
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),



                        ],
                      ),
                    )
                        :Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 37,
                          ),
                          width: Get.width,
                          padding: EdgeInsets.only(
                            bottom: 25
                          ),
                          decoration: BoxDecoration(
                            border:Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Color(0xffE7E7E7)
                              )
                            )
                          ),
                          child: Text(
                            "Результат поиска",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 22,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                        ),
                        ...catalogController.array.map(
                                (el){
                              return ItemRowSeller(el);
                            }
                        )
                      ],
                    )
                )
              ],
            ),
          ),

        ],
      ),
    );
  }



}
