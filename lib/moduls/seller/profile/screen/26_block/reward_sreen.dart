import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class RewardScreen extends StatelessWidget {
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  RewardScreen({@required this.bottom});
  bool open1=false;
  bool open2=false;
  bool open3=false;
  bool open4=false;
  bool open5=false;
  bool open6=false;

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
              true,
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
      body: GestureDetector(
          child: Column(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15
                  ),
                  child: Text(
                    "Вознаграждение",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Roboto",
                        color: Color(0xff2e2e33)
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                    ),
                    padding: EdgeInsets.only(
                        bottom: 25
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Статус:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Все",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 10,
                              height: 6,
                              child: Image.asset("assets/image/arrow_down.png",color: Color(0xff2e2e33),),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 28,
                        ),

                        Row(
                          children: [
                            Text(
                              "Статус:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2021",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 10,
                              height: 6,
                              child: Image.asset("assets/image/arrow_down.png",color: Color(0xff2e2e33),),
                            )
                          ],
                        )
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffE7E7E7)
                                      )
                                  )
                              ),
                              height: 50,
                              child: Center(
                                  child:Text(
                                    'Месяц',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffE7E7E7)
                                      )
                                  )
                              ),
                              height: 50,
                              child: Center(
                                  child:Text(
                                    'Заказ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffE7E7E7)
                                      )
                                  )
                              ),
                              height: 50,
                              child: Center(
                                  child:Text(
                                    'Сумма, руб.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffE7E7E7)
                                      )
                                  )
                              ),
                              height: 50,
                              child: Center(
                                child:Text(
                                  'Отчетный документ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 21,
                      top: 0
                    ),
                    children: [
                      Table(
                          children: [
                            TableRow( children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                    color: open1?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("10.2021",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open1=!open1;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child:  Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open1?Color(0xffE7E7E7):Colors.white

                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("1-1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open1=!open1;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open1?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child:  Center(
                                    child: Text("25 364",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open1=!open1;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open1?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                ),
                                onTap: (){
                                  open1=!open1;
                                  Get.forceAppUpdate();
                                },
                              ),
                            ]),
                            TableRow( children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open2?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("10.2021",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open2=!open2;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child:  Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open2?Color(0xffE7E7E7):Colors.white

                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("1-1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open2=!open2;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open2?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child:  Center(
                                    child: Text("25 364",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open2=!open2;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open2?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                ),
                                onTap: (){
                                  open2=!open2;
                                  Get.forceAppUpdate();
                                },
                              ),
                            ]),
                            TableRow( children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open3?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("10.2021",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open3=!open3;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child:  Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open3?Color(0xffE7E7E7):Colors.white

                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("1-1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open3=!open3;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open3?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child:  Center(
                                    child: Text("25 364",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open3=!open3;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open3?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                ),
                                onTap: (){
                                  open3=!open3;
                                  Get.forceAppUpdate();
                                },
                              ),
                            ]),
                            TableRow( children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open4?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("10.2021",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open4=!open4;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child:  Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open4?Color(0xffE7E7E7):Colors.white

                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("1-1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open4=!open4;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open4?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child:  Center(
                                    child: Text("25 364",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open4=!open4;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffE7E7E7)
                                            )
                                        ),
                                        color: open4?Color(0xffE7E7E7):Colors.white
                                    ),
                                    height: 60,
                                    child: Center(
                                      child: Text(
                                        "Открыть",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xffE6332A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    )
                                ),
                                onTap: (){
                                  open4=!open4;
                                  Get.forceAppUpdate();
                                },
                              ),
                            ]),
                            TableRow( children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open5?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("10.2021",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open5=!open5;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child:  Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open5?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text("1-1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open5=!open5;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open5?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child:  Center(
                                    child: Text("25 364",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  open5=!open5;
                                  Get.forceAppUpdate();
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE7E7E7)
                                          )
                                      ),
                                      color: open5?Color(0xffE7E7E7):Colors.white
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                      "Открыть",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xffE6332A),
                                          decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ),
                                onTap: (){
                                  open5=!open5;
                                  Get.forceAppUpdate();
                                },
                              ),
                            ]),
                          ]
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,top: 10,
                    bottom: 21
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffE6332A),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(
                    child: Text(
                      "Калькулятор",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: "Roboto"
                        )
                    ),
                  ),
                )
              ]
          )
      )
    );
  }

}