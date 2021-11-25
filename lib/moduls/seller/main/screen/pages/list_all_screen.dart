import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/query/screen/query_item_screen_with_photo.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen_back.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/pages/list_items_seller.dart';
import 'package:repair_parts/moduls/seller/main/screen/pages/search_page_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_with_photo_and_desc.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_submit.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/registred_org.dart';

class ListAllScreenSeller extends StatelessWidget{

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
          //2
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
                      "Screens 2",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(CatalogScreenSeller());

            },
          ),
          //105 105а 105в 105д 105е 105б 105г
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
                    Container(
                      width: Get.width-50,
                      child: Text(
                        "Screens 105 105а 105в 105д 105е 105б 105г",
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
              Get.to(InformationScreenSeller(bottom: true));

            },
          ),
          //81 5 5а
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
                      "Screens 81 5 5а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ProfilePageSeller(bottom: true,));

            },
          ),
          //52 53 54 55
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
                      "Screens 52 53 54 55",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(RegisterPageSeller());

            },
          ),
          //17  32
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
                      "Screens 17  32",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(QueryScreenSeller(bottom: true,));

            },
          ),
          //18
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
                      "Screens  18 ",
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
          //21 21а 22 23 24
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
                      "Screens  21 21а 22 23 24 ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(QueryWithPhotoAndDesc(bottom: true,));

            },
          ),
          //2 6
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
                      "Screens  2 6",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(CatalogScreenSellerBack(bottom: true,));

            },
          ),
          //11 12,12a",
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
                      "Screens   11 12,12a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ListItemsSeller("КАМАЗ",bottom: true,));

            },
          ),

          //  15 16 13
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
                      "Screens  15 16 13",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(SearchPageSeller(bottom: true,));

            },
          ),
          //56 57 61
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
                      "Screens  56 57 61",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(RegistredOrgScreen());

            },
          ),
          //58 58б 58а 59 59а
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
                      "Screens  58 58б 58а 59 59а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(NORegistredOrgScreen2());

            },
          ),
          //61,61a,63,64,61b,65
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
                      "Screens  61,61a,63,64,61b,65",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(NORegistredOrgScreenSeller());

            },
          ),

          //66
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
                      "Screens  66",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(NoSubmit());

            },
          ),
          //SearchPageSeller
        ],
      )
    );
  }

}