import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class BuyerFeedbackScreen extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  BuyerFeedbackScreen({@required this.bottom});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Жалоба отправлена",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                          textAlign: TextAlign.center,

                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Жалоба будет рассмотрена в ближайшее врямя администратом.",
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
              bottom: 37
            ),
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffE6332A),
              borderRadius: BorderRadius.circular(6)
            ),
            child: Center(
              child: Text(
                "ОК",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: "Roboto"
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}