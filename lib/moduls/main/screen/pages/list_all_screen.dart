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
import 'package:repair_parts/moduls/orders/screen/change_delivery.dart';
import 'package:repair_parts/moduls/orders/screen/change_delivery_type.dart';
import 'package:repair_parts/moduls/orders/screen/history_order_item.dart';
import 'package:repair_parts/moduls/orders/screen/history_orders.dart';
import 'package:repair_parts/moduls/orders/screen/history_reset_obmen_orders.dart';
import 'package:repair_parts/moduls/orders/screen/no_history_order.dart';
import 'package:repair_parts/moduls/orders/screen/order_item.dart';
import 'package:repair_parts/moduls/orders/screen/order_item_treck.dart';
import 'package:repair_parts/moduls/orders/screen/order_reset.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen.dart';
import 'package:repair_parts/moduls/orders/screen/order_screen2.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/close_obmen.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/close_reset.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/done_obmen.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/done_reset.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/no_obmen.dart';
import 'package:repair_parts/moduls/orders/screen/pages_reset/no_reset.dart';
import 'package:repair_parts/moduls/orders/screen/reset_item_order_screen.dart';
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
          //1
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
          //2,7,10,10a,10b
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
          //66,67,68
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
          //21,22
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
          //18,19
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
          //16,16a,17a,17,16b
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
          //22а 22б 23
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
          //24 24а
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
          //53
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
          //82 83
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
          //69 69а 70 71
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
          //31
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
          //30 33
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
          //45 45а 46
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
          //49
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
          //50 51 54 55
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
          //56
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
          //30в 30г 30а 30б 30д
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
          //30е
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
          //30л
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
          //32
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
          //34 34б 34в 34г 34д 34а 34а 34б
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
          //35а 35б
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
          //36 36б 36а 37а 37 37б 40 40а 40в 40г
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
          //38 38а
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
          //41 42 42а
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
          //43 43а
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
          //48д
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
                      "Screens 48д 48а 48б 48г",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(OrderItem(bottom: true,));
            },
          ),
          // "Screens 47 47а 47г 47в 47б",
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
                      "Screens 47 47а 47г 47в 47б",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(OrderItemTreck(bottom: true,));
            },
          ),
          //"Screens 48б 48е 47 47 48б",
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
                      "Screens 48б 48е 47 47 48б",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ChangeDelivery(bottom: true,));
            },
          ),
          //  "Screens 48е",
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
                      "Screens 48е",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ChangeDeliveryType(bottom: true,));
            },
          ),
          //74
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
                      "Screens 74",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(NoHistoryOrder(bottom: true,));
            },
          ),
          //Screens 73, 73а
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
                      "Screens 73, 73а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(HistoryOrders(bottom: true,));
            },
          ),
          // 73б 73в
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
                      "Screens 73б 73в",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(HistoryOrderItem(bottom: true,));
            },
          ),
          // "Screens 73г 76 76а 77",
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
                      "Screens 73д,73е 73ж",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(ResetItemOrderScreen(bottom: true,));
            },
          ),
          //78
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
                      "Screens 78",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(HistoryResetObmenOrders(bottom: true,));
            },
          ),
          //73з
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
                      "Screens 73з",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(NoResetScreen(bottom: true,));
            },
          ),
          //73и
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
                      "Screens 73и",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(DoneResetScreen(bottom: true,));
            },
          ),
          //73к
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
                      "Screens 73к",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(CloseResetScreen(bottom: true,));
            },
          ),
          //73л
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
                      "Screens 73л",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(NoObmenScreen(bottom: true,));
            },
          ),
          //73м
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
                      "Screens 73м",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(DoneObmenrScreen(bottom: true,));
            },
          ),
          //73н
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
                      "Screens 73н",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

            ),
            onTap:(){
              Get.to(CloseObmenScreen(bottom: true,));
            },
          ),
          //HistoryResetObmenOrders

        ],
      ),
    );
  }

}