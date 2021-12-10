import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/components_main/text_field_component.dart';

class RewardsCalculator extends StatelessWidget{
  RewardsCalculator({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
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
                true,
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
                false,
                "profile_icon.png",
                18,
                text: "Кабинет",

              ),
            ],
          ),
        ):Container(
          height: 1,
        ),
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 30
                  ),
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:  Container(
                          width: 19,
                          height: 16,
                          child: Image.asset("assets/image/arrow_left.png"),
                        ),
                        onTap: (){
                          Get.back();
                        },
                      )
                    ],
                  )
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 15
                      ),
                      child: Text(
                        "Вознаграждение",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 26,
                          bottom: 7
                      ),
                      child:  Text(
                        "Калькулятор вознаграждения",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 17
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Сумма заказа",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 50,
                                width: Get.width-40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Color(0xffD6D6D6)
                                )
                              ),
                                padding: EdgeInsets.only(
                                  left: 20
                                ),
                                child: TextField(
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Введите данные",
                                    hintStyle: TextStyle(
                                        color: Color(0xff959595),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"
                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 17
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Комиссия, %",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 50,
                                width: Get.width-40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                      color: Color(0xffD6D6D6)
                                  )
                              ),
                              padding: EdgeInsets.only(
                                  left: 20
                              ),
                                child: TextField(
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Введите данные",
                                    hintStyle: TextStyle(
                                        color: Color(0xff959595),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"
                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 17
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Вознаграждение",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 50,
                                width: Get.width-40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                      color: Color(0xffD6D6D6)
                                  )
                              ),
                              padding: EdgeInsets.only(
                                  left: 20
                              ),
                                child: TextField(
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Введите данные",
                                    hintStyle: TextStyle(
                                        color: Color(0xff959595),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"
                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              )
            ]
        )
    );
  }

}