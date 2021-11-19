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
import 'package:repair_parts/moduls/product/screen/product_screen.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/profile/screen/profile_screen.dart';
import 'package:repair_parts/moduls/query/screen/add_address.dart';
import 'package:repair_parts/moduls/query/screen/list_query_item_screen2.dart';
import 'package:repair_parts/moduls/query/screen/query_item_delete.dart';
import 'package:repair_parts/moduls/query/screen/query_item_screen.dart';
import 'package:repair_parts/moduls/query/screen/query_item_screen2.dart';
import 'package:repair_parts/moduls/query/screen/query_item_screen_with_photo.dart';
import 'package:repair_parts/moduls/query/screen/query_register_screen.dart';
import 'package:repair_parts/moduls/query/screen/query_register_screen_ur_face.dart';
import 'package:repair_parts/moduls/query/screen/query_register_screen_ur_face2_ooo.dart';
import 'package:repair_parts/moduls/query/screen/transport_company.dart';

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
             Get.to(CatalogScreen(bottom: true,));
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
                        "Screens 21,22",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(SearchPage(bottom: true,));
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
                      "Screens 18,19",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ProductScreen(bottom: true,));
            },
          ),

          //18,19

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
              Get.to(ListItems("КАМАЗ",bottom: true,));
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
              Get.to(ChooseCategory(bottom: true,));
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
              Get.to(ChooseSeller(bottom: true,));
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
              Get.to(ChooseRegion(bottom: true,));
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
              Get.to(ProfileScreen(bottom: true,));
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
                      "Screens 31 ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryScreen2(bottom: true,));
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
                      "Screens 30 33",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryScreen(bottom: true,));
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
              Get.to(OrderScreen(bottom: true,));
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
              Get.to(BacketScreen(bottom: true,));
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
              Get.to(BacketScreen2(bottom: true,));
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
              Get.to(MessageScreen(bottom: true,));
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
                    Container(
                      width: Get.width-40,
                      child: Text(
                        "Screens 30в 30г 30а 30б 30д",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    )
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryItemScreen(bottom: true,));
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
                      "Screens 30е",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(Address());
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
                      "Screens 30л",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryItemDelete(bottom: true,));
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
                      "Screens 32",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryItemScreenWithPhoto(bottom: true,));
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
                width: Get.width-51,
                child: Row(
                  children: [
                    Container(
                      width: Get.width-51,
                      child: Text(
                        "Screens 34 34б 34в 34г 34д 34а 34а 34б",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    )
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryItemScreen2(bottom: true,));
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
                      "Screens 35а 35б",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(TransportCompany(bottom: true,));
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
                    Container(
                      width: Get.width-40,
                      child: Text(
                        "Screens 36 36б 36а 37а 37 37б 40 40а 40в 40г",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    )
                  ],
                )

            ),
            onTap:(){
              Get.to(ListQueryItemScreen2(bottom: true,));
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
                      "Screens 38 38а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryRegisterScreen(bottom: true,));
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
                      "Screens 41 42 42а ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryRegisterScreenUrFace(bottom: true,));
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
                      "Screens 43 43а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(QueryRegisterScreenUrFace2OOO(bottom: true,));
            },
          ),

          //43 43а

          // QueryRegisterScreen
        ],
      ),
    );
  }

}