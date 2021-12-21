import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class SearchTrackNumber extends StatelessWidget{
  SearchTrackNumber({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(height: 70,

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
                      top: 20
                  ),
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:  Container(
                          child: Icon(Icons.arrow_back),
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
                            top: 17
                        ),
                        child: Text(
                          "Отслеживание заказа по трек номеру",
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
                          top: 36,
                          bottom: 7
                      ),
                      child:  Text(
                        "Трек номер для отслеживания",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20
                      ),
                        padding: EdgeInsets.only(
                            left: 20,
                          top: 16,
                          bottom: 16
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffD6D6D6),
                                width: 1
                            )
                        ),
                        child:Text(
                          "6ва56а5ва65в",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 19
                      ),
                      padding: EdgeInsets.only(
                          left: 20,
                          bottom:40
                      ),
                      child: Row(
                        children: [
                          Container(
                              width:40,
                              height:40,
                              decoration: BoxDecoration(
                                  color:Color(0xffF3F3F3),
                                  borderRadius:BorderRadius.circular(6)
                              ),
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/image/box.png")
                          ),
                          SizedBox(width: 20,),
                          Text(
                            "Деловые линии",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffD6D6D6),
                                width: 1
                            )
                        ),
                        padding: EdgeInsets.all(24),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 14,
                              height: 155,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 5,
                                    child:  RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        "                                                  ",style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationStyle: TextDecorationStyle.dashed,
                                      ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffD6D6D6)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffD6D6D6)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffE6332A)
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(width: 19,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 42,
                                  margin: EdgeInsets.only(
                                      bottom: 28
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Принят на терминале отправки",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("25.10.2021 00:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),),

                                    ],
                                  ),
                                ),
                                Container(
                                  height: 42,
                                  margin: EdgeInsets.only(
                                      bottom: 28
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Прибывает на терминал г. Зады",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("25.10.2021 00:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),),

                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 28
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Get.width-140,
                                        child: Text("Отправляется на адрес получения в г. Зады и будет доставлен в течении суток",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("25.10.2021 00:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),),

                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
            ]
        )
    );
  }

}