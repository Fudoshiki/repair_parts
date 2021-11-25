import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class TrackOrderScreen extends StatelessWidget{
  TrackOrderScreen({@required this.bottom});
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
                "bascket_icon.png",
                18,
                text: "Корзина",

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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Отслеживание заказа",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 28,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                
                              ],
                            ),
                          ],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 14,
                        bottom: 15
                      ),
                      child:  Row(
                          children:[
                            Text(
                              "Трек номер:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff767676),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                                children:[
                                  Text(
                                    "6ва56а5ва65в",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffE6332A),
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  DottedBorder(
                                      child: Container(
                                          height: 0.5,
                                          width:Get.width-315
                                      ),
                                      strokeWidth:0.5,
                                      padding: EdgeInsets.all(0),
                                      color:Color(0xffE6332A)
                                  )
                                ]
                            ),
                          ]
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20,
                          top: 11,
                          bottom:31
                      ),
                      child: Row(
                        children: [
                          Container(
                              width:40,
                              height:40,
                              decoration: BoxDecoration(
                                  color:Color(0xffF3F3F3),
                                  borderRadius:BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/image/box.png")
                          ),
                          SizedBox(width: 20,),
                          Text(
                            "Деловые линии",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
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
                            margin: EdgeInsets.only(
                              right: 20
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffD6D6D6)
                                  ),
                                ),
                               Container(
                                 height: 56,
                                  width: 27,
                                  padding: EdgeInsets.all(0),
                                  child:Stack(
                                    children: [
                                      Positioned(
                                        left: 0,right: 0,
                                        bottom: 0,
                                        top: 0,
                                        child: RotatedBox(
                                          quarterTurns: 1,
                                          child: Text(
                                            "                     ",style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            decorationStyle: TextDecorationStyle.dashed,
                                          ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ),
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD6D6D6)
                                  ),
                                ),
                                Container(
                                    height: 56,
                                    width: 27,
                                    padding: EdgeInsets.all(0),
                                    child:Stack(
                                      children: [
                                        Positioned(
                                          left: 0,right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Text(
                                              "                     ",style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              decorationStyle: TextDecorationStyle.dashed,
                                            ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD6D6D6)
                                  ),
                                ),
                                Container(
                                    height: 56,
                                    width: 27,
                                    padding: EdgeInsets.all(0),
                                    child:Stack(
                                      children: [
                                        Positioned(
                                          left: 0,right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Text(
                                              "                     ",style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              decorationStyle: TextDecorationStyle.dashed,
                                            ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE6332A)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 35
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Принят на терминале отправки",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("25.10.2021 00:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto"
                                      ),),

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: 35
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Принят на терминале отправки",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("25.10.2021 00:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto"
                                      ),),

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: 35
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Принят на терминале отправки",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("25.10.2021 00:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto"
                                      ),),

                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Принят на терминале отправки",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("25.10.2021 00:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto"
                                      ),),

                                  ],
                                ),
                              )
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