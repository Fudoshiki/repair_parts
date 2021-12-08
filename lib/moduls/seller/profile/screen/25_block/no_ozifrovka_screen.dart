import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/buyer/home/controller/home_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/orders/controller/order_controller.dart';

class NoOzifrovkaScreen extends StatelessWidget{
  bool? bottom;
  NoOzifrovkaScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

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
              child:  Container(
                margin: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 40
                ),
                height: 40,
                child: Container(
                  width: 19,
                  height: 16,

                  child: Image.asset("assets/image/arrow_left.png"),
                ),
              ),
              onTap: (){
                Get.back();
              },
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 10,

                right: 20,
              ),
              child: Text(
                "Оцифровка",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Color(0xff2e2e33),
                    fontFamily: "Roboto"
                ),
              ),
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "У вас пока нет товаров",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,

                          ),
                          SizedBox(height: 16,),
                          Text(
                            'Загрузите новые товары с помощью кнопки «Оцифровать»',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 21
              ),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Text(
                  "Оцифровать",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Roboto"
                  ),
                ),
              ),
            )

          ],
        )
    );
  }

}