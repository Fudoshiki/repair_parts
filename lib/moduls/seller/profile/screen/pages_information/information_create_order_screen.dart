import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class InformationCreateOrderScreen extends StatelessWidget{
  bool? bottom;
  InformationCreateOrderScreen({@required this.bottom});
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
              "Как оформить заказ",
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
                  "Для того, чтобы оформить заказ, Вам необходимо совершить несколько простых действий:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    color: Color(0xff2e2e33)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 22
                  ),
                  child:  Text(
                    "1. Выбираем товар \n"
                        "2. Кладем товар в корзину \n"
                        "3. Отправляем запрос Поставщикам \n"
                        "4. Получаем предложения от Поставщиков с ценами \n"
                        "5. Выбираем лучшие предложения \n"
                        "6. Оплачиваем заказ \n",
                    style: TextStyle(
                        color: Color(0xff2e2e33),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 2,
                        fontFamily: "Roboto"
                    ),
                  ),
                )

              ],
            ),
          )

        ],
      ),
    );
  }


}
