import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/profile_screen_block.dart';
import 'package:repair_parts/moduls/buyer/query/screen/query_item_screen_with_photo.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/catalog_screen_back.dart';
import 'package:repair_parts/moduls/seller/catalog/screen/pages/list_items_seller.dart';
import 'package:repair_parts/moduls/seller/main/screen/pages/search_page_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/close_obmen_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/close_reset_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/disagree_obmen_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/disagree_reset_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/done_obmen_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/done_reset_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/obmen_waiting_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/19_block/reset_waiting_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/20_block/main_data_profile_changed.dart';
import 'package:repair_parts/moduls/seller/profile/screen/20_block/main_data_profile_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/do_ozifrovka_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/do_ozifrovka_screen_2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/no_ozifrovka_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/ozifrovka_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/ozifrovka_status_101.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/ozifrovka_status_102.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/ozifrovka_status_103.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/ozifrovka_status_103a.dart';
import 'package:repair_parts/moduls/seller/profile/screen/25_block/product_send_on_accept.dart';
import 'package:repair_parts/moduls/seller/profile/screen/26_block/reward_sreen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/block_19/history_obmen76.dart';
import 'package:repair_parts/moduls/seller/profile/screen/block_19/reset_obmen_item76a.dart';
import 'package:repair_parts/moduls/seller/profile/screen/block_19/reset_obmen_item76b.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/buyer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/no_submit.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/waiting_data.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen3.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_order_item_screen4.dart';
import 'package:repair_parts/moduls/seller/profile/screen/history_orders.dart';
import 'package:repair_parts/moduls/seller/profile/screen/message_32_block/message_item_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/message_32_block/messages_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/no_history_order.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/14-15blocks/order_1button_screen_tk29B.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/14-15blocks/order_1button_screen_tk33??.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/14-15blocks/order_1button_screen_tk33o.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/14-15blocks/order_1button_screen_tk33p.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/14-15blocks/order_2button_screen_tk28b.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/attach_tk.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_1button_screen_tk.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_1button_screen_tk31.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_1button_screen_tk33k.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_1button_screen_tk33l.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_1button_screen_tk33l2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_2button_screen_tk.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_2button_screen_tk31a.dart';
import 'package:repair_parts/moduls/seller/profile/screen/offer_with_tk_choose/order_2button_screen_tk31b.dart';
import 'package:repair_parts/moduls/seller/profile/screen/order_page/order_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/profile_page2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/query_with_photo_and_desc.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_block/block_profile.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_block/block_profile_query.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/create_offer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/offer_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/offer_screen2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_offer/offer_sended.dart';
import 'package:repair_parts/moduls/seller/profile/screen/product_change.dart';
import 'package:repair_parts/moduls/seller/profile/screen/product_changed.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/choose_category_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org259_59a.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org_seller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_submit.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/registred_org.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/registred_org2.dart';
import 'package:repair_parts/moduls/seller/profile/screen/rewards_calculator.dart';
import 'package:repair_parts/moduls/seller/profile/screen/search_track_number.dart';


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
                      "Screens 2 2?? 2?? 2??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>CatalogScreenSeller(bottom: true,));

            },
          ),
          //105 105?? 105?? 105?? 105?? 105?? 105??
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
                        "Screens 105 105?? 105?? 105?? 105?? 105?? 105??",
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
              Get.to(()=>InformationScreenSeller(bottom: true));

            },
          ),
          //81  5??
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
                      "Screens 81  5??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ProfilePageSeller(bottom: true,));

            },
          ),

          //5
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
                      "Screens 5",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ProfilePageSeller2(bottom: true,));

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
              Get.to(()=>RegisterPageSeller());

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
              Get.to(()=>QueryScreenSeller(bottom: true,));

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
              Get.to(()=>QueryScreen2(bottom: true,));

            },
          ),
          //21 21?? 22 23 24
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
                      "Screens  21 21?? 22 23 24 ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>QueryWithPhotoAndDesc(bottom: true,));

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
              Get.to(()=>CatalogScreenSellerBack(bottom: true,));

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
              Get.to(()=>ListItemsSeller("??????????",bottom: true,));

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
              Get.to(()=>SearchPageSeller(bottom: true,));

            },
          ),
          //56  61
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
                      "Screens  56  61",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>RegistredOrgScreen());

            },
          ),

          // 57
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
                      "Screens   57 ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>RegistredOrgScreen2Seller());

            },
          ),
          //58 58?? 58??
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
                      "Screens  58 58?? 58??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>NORegistredOrgScreen2());

            },
          ),

          // 59 59??
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
                      "Screens  59 59??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>NORegistredOrgScreen259_59a());

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
              Get.to(()=>NORegistredOrgScreenSeller(bottom: true,));

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
              Get.to(()=>NoSubmit(bottom: true,));

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
              Get.to(()=>OfferSended(bottom: true,));

            },
          ),
          //33 33?? 33?? 33?? 33?? 33?? 33?? 33?? 33??
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
                        "Screens 33  33?? 33?? 33?? 33?? 33?? 33?? 33?? 33??",
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
              Get.to(()=>OfferScreen(bottom: true,));
            },
          ),
          //33??
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
                        "Screens 33??",
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
              Get.to(()=>OfferScreen2(bottom: true,));
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
              Get.to(()=>ProfileScreenBlockSeller(bottom: true,));
            },
          ),
          //82?? 82??
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
                      "Screens  82?? 82??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ProfileScreenBlockQuerySeller(bottom: true,));
            },
          ),
          // 85 85?? 86 86?? 86?? 84
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
                      "Screens  85 85?? 86 86?? 86?? 84",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>BuyerScreen(bottom: true,));
            },
          ),
          //25 25?? 25?? 25?? 25??
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
                      "Screens  25 25?? 25?? 25?? 25??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>CreateOfferScreen(bottom: true,));
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
                      "Screens  3 3a 33?? 33p",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenSeller(bottom: true,));
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
              Get.to(()=>HistoryOrdersSeller(bottom: true,));
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
              Get.to(()=>NoHistoryOrderSeller(bottom: true,));
            },
          ),
          //75??
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
                      "Screens  75??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>HistoryOrderItemScreenSeller(bottom: true,));
            },
          ),
          //75??
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
                      "Screens  75??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>HistoryOrderItemScreenSeller2(bottom: true,));
            },
          ),
          //75??
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
                      "Screens  75??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>HistoryOrderItemScreenSeller3(bottom: true,));
            },
          ),
          //75??
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
                      "Screens  75??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>HistoryOrderItemScreenSeller4(bottom: true,));
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
              Get.to(()=>ProductChange(bottom: true,));
            },
          ),
          //13
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
                      "Screens  13",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
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
              Get.to(()=>ProductChanged(bottom: true,));
            },
          ),
          //40 41
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
                      "Screens  40 41",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>AttachTK(bottom: true,));
            },
          ),
          //28
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
                      "Screens  28",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem2ButtonSeller(bottom: true,));
            },
          ),
          //29
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
                      "Screens  29",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller(bottom: true,));
            },
          ),
          //31
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
                      "Screens  31",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller31(bottom: true,));
            },
          ),
          // 31??
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
                      "Screens  31a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem2ButtonSeller31a(bottom: true,));
            },
          ),
          // 31??
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
                      "Screens  31b",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem2ButtonSeller31b(bottom: true,));
            },
          ),
          // 33k
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
                      "Screens  33k",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33k(bottom: true,));
            },
          ),
          // 33l
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
                      "Screens  33l",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33l(bottom: true,));
            },
          ),
          // 33l2
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
                      "Screens  33l2",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33l2(bottom: true,));
            },
          ),
          //28b 29??
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
                      "Screens  28b 29??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem2ButtonSeller28b(bottom: true,));
            },
          ),
          //29??
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
                      "Screens  29b",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller29B(bottom: true,));
            },
          ),
          //33??
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
                      "Screens  33??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33o(bottom: true,));
            },
          ),
          //33??
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
                      "Screens  33??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33p(bottom: true,));
            },
          ),
          //33??
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
                      "Screens  33??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33u(bottom: true,));
            },
          ),
          //33??
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
                      "Screens  33??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OrderScreenItem1ButtonSeller33u(bottom: true,));
            },
          ),
          //94 95
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
                      "Screens  94 95",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ChooseCategorySeller(bottom: true,));
            },
          ),
          //85??
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
                      "Screens  85??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>MainDataProfileChanged(bottom: true,));
            },
          ),
          // 85 85?? 91?? 85?? 86 86?? 86?? 86?? 92 93 93??
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
                        "Screens  85 85?? 91?? 85?? 86 86?? 86?? 86?? 92 93 93??",
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
              Get.to(()=>MainDataProfileSeller(bottom: true,));
            },
          ),
          //104 104??
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
                      "Screens 104 104??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>RewardScreen(bottom: true,));
            },
          ),
          //76
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
                      "Screens  76",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>HistoryResetObmenSeller76(bottom: true,));
            },
          ),
          //76a
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
                      "Screens  76a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ResetObmenItem76a(bottom: true,));
            },
          ),
          //76b
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
                      "Screens  76b",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ResetObmenItem76b(bottom: true,));
            },
          ),
          /////////
          //77
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
                      "Screens  77",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ResetWaitingScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DisagreeResetScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DoneResetScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>CloseResetScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ObmenWaitingScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DisagreeObmenScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DoneObmenScreen(bottom: true,));
            },
          ),
          //77??
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
                      "Screens  77??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>CloseObmenScreen(bottom: true,));
            },
          ),
          //96
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
                      "Screens  96",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>NoOzifrovkaScreen(bottom: true,));
            },
          ),
          //97
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
                      "Screens  97",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OzifrovkaScreen(bottom: true,));
            },
          ),
          // 99
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
                      "Screens   99",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DoOzifrovkaScreen(bottom: true,));
            },
          ),
          //98
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
                      "Screens   98",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>DoOzifrovkaScreen2(bottom: true,));
            },
          ),
          //100
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
                      "Screens   100",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>ProductSendOnAccept(bottom: true,));
            },
          ),
          // 101
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
                      "Screens   101",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OzifrovkaStatusScreen101(bottom: true,));
            },
          ),
          // 102
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
                      "Screens   102",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OzifrovkaStatusScreen102(bottom: true,));
            },
          ),
          // 103
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
                      "Screens   103",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OzifrovkaStatusScreen103(bottom: true,));
            },
          ),
          // 103a
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
                      "Screens   103a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>OzifrovkaStatusScreen103a(bottom: true,));
            },
          ),
          // 42
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
                      "Screens   42",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>MessagesScreen(bottom: true,));
            },
          ),
          // 43 44 45 47 48  49 44 60
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
                        "Screens   43 44 45 47 48  49 44 60",
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
              Get.to(()=>MessageItemScreenSeller());
            },
          ),
          // 90
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
                      "Screens   90",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>NoSubmitSeller(bottom: true));
            },
          ),
          // 89
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
                      "Screens   89",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>WaitingData(bottom: true));
            },
          ),
          // 30a
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
                      "Screens   30a",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>SearchTrackNumber(bottom: true));
            },
          ),
          // 104??
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
                      "Screens   104??",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
            ),
            onTap:(){
              Get.to(()=>RewardsCalculator(bottom: true));
            },
          ),
          //SearchTrackNumber

        ],
      )
    );
  }

}