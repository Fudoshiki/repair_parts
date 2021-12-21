import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class InformationDeliveryScreen extends StatelessWidget{
  bool? bottom;
  InformationDeliveryScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottom!=null?         SizedBox(height: 70,


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
              "Доставка",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
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
              ),
              children: [
                Text(
                  "Самовывоз:",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  "Физическое лицо: получение заказа с паспортом и номером заказа в пункте выдачи Поставщика."
                      "Юридическое лицо: получение с паспортом, печатью или доверенностью и номером заказа в пункте выдачи Поставщика.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Доставка:",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  "Покупатель выбирает транспортную компанию на Сервисе при оформлении Заказа. После оплаты, Поставщик отгружает Заказ выбранной Покупателем транспортной компанией. Получение и оплата доставки заказа осуществляется Покупателем согласно условий транспортной компании.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),

              ],
            ),
          )

        ],
      ),
    );
  }


}
