import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/profile_screen_block.dart';
import 'package:repair_parts/moduls/buyer/query/screen/query_item_screen_with_photo.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen_back.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/pages/list_items_seller.dart';
import 'package:repair_parts/moduls/seller/main/screen/pages/search_page_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/buyer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen3.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen4.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_orders.dart';
import 'package:repair_parts/moduls/seller/profile/screen/no_history_order.dart';
import 'package:repair_parts/moduls/seller/profile/screen/order_page/order_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_with_photo_and_desc.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_block/block_profile.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_block/block_profile_query.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/create_offer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/offer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/offer_sended.dart';
import 'package:repair_parts/moduls/seller/profile/screen/product_change.dart';
import 'package:repair_parts/moduls/seller/profile/screen/product_changed.dart';
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
                      "Screens 2 2а 2б 2в",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(CatalogScreenSeller(bottom: true,));

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
          //34 27
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
                      "Screens  34 27",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(OfferSended());

            },
          ),
          //33 33с 33а 33х 33ф 33ч 33в 33я 33х 33ф
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
                      width: Get.width-40,
                      child: Text(
                        "Screens 33 33с 33а 33х 33ф 33ч 33в 33я 33х 33ф",
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
              Get.to(OfferScreen());

            },
          ),
          //82
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
                      "Screens  82",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ProfileScreenBlockSeller(bottom: true,));
            },
          ),
          //82а 82б
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
                      "Screens  82а 82б",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ProfileScreenBlockQuerySeller(bottom: true,));
            },
          ),
          // 85 85а 86 86а 86б 84
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
                      "Screens  85 85а 86 86а 86б 84",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(BuyerScreen(bottom: true,));
            },
          ),
          //25 25а 25б 25в 25г
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
                      "Screens  25 25а 25б 25в 25г",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(CreateOfferScreen(bottom: true,));
            },
          ),
          //3 3a
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
                      "Screens  3 3a 33п 33p",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(OrderScreenSeller(bottom: true,));
            },
          ),
          //74
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
                      "Screens  74",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HistoryOrdersSeller(bottom: true,));
            },
          ),
          //75
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
                      "Screens  75",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(NoHistoryOrderSeller(bottom: true,));
            },
          ),
          //75а
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
                      "Screens  75а",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HistoryOrderItemScreenSeller(bottom: true,));
            },
          ),
          //75в
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
                      "Screens  75в",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HistoryOrderItemScreenSeller2(bottom: true,));
            },
          ),
          //75б
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
                      "Screens  75б",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HistoryOrderItemScreenSeller3(bottom: true,));
            },
          ),
          //75г
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
                      "Screens  75г",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(HistoryOrderItemScreenSeller4(bottom: true,));
            },
          ),
          //14
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
                      "Screens  14",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ProductChange(bottom: true,));
            },
          ),
          //14a
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
                      "Screens  14a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(ProductChanged(bottom: true,));
            },
          ),
          //ProductChanged
        ],
      )
    );
  }

}