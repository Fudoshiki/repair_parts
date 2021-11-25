import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_contacts_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_create_order_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_delivery_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_document_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_payment_screen.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages_information/information_reset-obmen_screen.dart';

class InformationScreenSeller extends StatelessWidget{
  bool? bottom;
  InformationScreenSeller({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              false,
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
              true,
              "profile_icon.png",
              18,
              text: "Кабинет",

            ),
          ],
        ),
      ):Container(
        height: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 40
                ),
                child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
            ),
            onTap: (){
              Get.back();
            },
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
              bottom: 20
            ),
            child: Text(
              "Информация",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Color(0xff2e2e33),
                  fontFamily: "Roboto"
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 21
              ),
              children: [
                getRow(
                  text: "Как оформить заказ",
                  onPress: (){
                    Get.to(InformationCreateOrderScreen(bottom: true));
                  }
                ),
                getRow(
                    text: "Оплата",
                    onPress: (){
                      Get.to(InformationPaymentScreen(bottom: true));

                    }
                ),
                getRow(
                    text: "Доставка",
                    onPress: (){
                      Get.to(InformationDeliveryScreen(bottom: true));

                    }
                ),
                getRow(
                    text: "Возврат/обмен",
                    onPress: (){
                      Get.to(InformationResetObmenScreen(bottom: true));

                    }
                ),
                getRow(
                    text: "Документы",
                    onPress: (){
                      Get.to(InformationDocumentScreen(bottom: true));

                    }
                ),
                getRow(
                    text: "Контакты",
                    onPress: (){
                      Get.to(InformationContactsScreen(bottom: true));

                    }
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
  Widget getRow({text,onPress}){
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
            bottom: 10
        ),
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(6)
        ),
        height: 50,
        padding: EdgeInsets.only(
          left: 20,
          right: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                "$text",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff2e2e33),
                fontFamily: "Roboto"
              ),
            ),
            Container(
              height: 12,
              child: Image.asset("assets/image/arrow_right.png"),
            )
          ],
        ),
      ),
      onTap: onPress,
    );
  }


}
