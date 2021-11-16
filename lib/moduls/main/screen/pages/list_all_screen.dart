import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/screen/backet_screen.dart';
import 'package:repair_parts/moduls/backet/screen/backet_screen2.dart';
import 'package:repair_parts/moduls/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/home/screen/home_screen.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/choose_category.dart';
import 'package:repair_parts/moduls/main/screen/pages/choose_region.dart';
import 'package:repair_parts/moduls/main/screen/pages/choose_seller.dart';
import 'package:repair_parts/moduls/main/screen/pages/search_page.dart';
import 'package:repair_parts/moduls/message/screen/message_screen.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen2.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/profile/screen/profile_screen.dart';

import 'add_address.dart';

class ListAllScreen extends StatelessWidget{
  MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            child: Container(

              margin: EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20
              ),
              child: Row(
                children: [
                  Icon(
                      Icons.arrow_back
                  ),
                ],
              )
            ),
            onTap: (){
              Get.back();
            },
          ),
          GestureDetector(
            child: Container(

              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1
                ),
                  color: Color(0xffE19999)
              ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                        "Screens 1",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HomeScreen());
            },
          ),
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                    top: 5
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                  color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                  left: 20
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                        "Screens 2,7,10,10a,10b",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
             Get.to(CatalogScreen());
            },
          ),
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                    top: 5
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                        "Screens 66,67,68",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(RegisterPage());
            },
          ),
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                    top: 5
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                        "Screens 21,18,19,22",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(SearchPage());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                  top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                        "Screens 16,16a,17a,17,16b",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ListItems("КАМАЗ"));
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 22а 22б 23",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(AddAddress());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 24 24а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ChooseCategory());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 53",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ChooseSeller());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 82 83",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ChooseRegion());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 69 69а 70 71",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ProfileScreen());
            },
          ),

          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 31 30 33",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryScreen());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 45 45а 46",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(OrderScreen());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 49",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(BacketScreen());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 50 51 54 55",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(BacketScreen2());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )    ,
                    color: Color(0xffE19999)
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                margin: EdgeInsets.only(
                    top: 5
                ),
                height: 60,
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      "Screens 56",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(MessageScreen());
            },
          ),

        ],
      ),
    );
  }

}