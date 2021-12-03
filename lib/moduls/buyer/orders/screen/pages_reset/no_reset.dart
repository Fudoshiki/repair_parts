import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class NoResetScreen extends StatelessWidget{
  bool? bottom;

  var open =false;

  var open1=false;

  var open2=false;
  var open3=false;
  var open4=false;
  var open5=false;
  var open6=false;
  var open7=false;

  var images=[
    "conector.png","conector.png","conector.png"
  ];

  NoResetScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  var currentIndex =0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null?SizedBox(
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
                                  "Отказ в возврате",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 28,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Text(
                                  "Дата запроса: 11.11.21",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff717171),
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
                      ),
                      padding: EdgeInsets.only(
                          bottom: 11
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 100,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/DSC_0211 2.png"),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width-180,
                                margin: EdgeInsets.only(
                                    bottom: 10
                                ),
                                child: Text(
                                  "Установка кронштейнов силового агрегата",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xff2E2E33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Артикул: 5320-1109359",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xff767676),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Бренд: ХТЗ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xff767676),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 15,right: 10
                            ),
                            height: 60,
                            padding: EdgeInsets.only(
                                top: 15,
                                bottom: 5
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xff525252),
                                        width: 1
                                    )
                                )
                            ),
                            width: Get.width-120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "количество в заказе, шт:    20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff525252),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width:161,
                                      child: Text(
                                        "количество к возврату, шт:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff525252),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 13
                                      ),
                                      child: Text(
                                          "2"
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Сумма, руб",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff525252),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Text(
                                    "420",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff525252),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "42",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff525252),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ),

                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top:28
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),

                                      color: Color(0xffC4C4C4)
                                  ),
                                  padding: EdgeInsets.all(7),
                                  child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                ),
                                SizedBox(width: 13,),
                                Text(
                                  "Товар не соответствует заявленному",
                                  style: TextStyle(
                                      color: Color(0xff525252),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 16,
                                  bottom: 10
                              ),
                              child: Text(
                                "Приобрел у вас вот эту штуку, но вы обещали одно, а отправили какую-то дичь",
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff2e2e33)
                                ),

                              ),
                            ),
                          ]
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: images.length!=0?95:0,
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 35
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...images.map(
                                  (el){
                                return Container(
                                    width: 90,
                                    height: 90,
                                    margin: EdgeInsets.only(
                                        right: 10,top: 5
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Container(
                                              height: 80,
                                              width: 80,

                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(6),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/image/${el}"
                                                      ),fit: BoxFit.fill
                                                  )
                                              ),

                                            )
                                        ),
                                      ],
                                    )
                                );
                              }
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Комментарий продавца",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff525252)
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Нет",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff525252)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 25,
                        bottom: 20
                      ),
                        width: Get.width-40,
                        height: 31,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffE6332A)
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.all(
                            6
                        ),
                        child:Center(
                          child: Text(
                            "Принять",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffE6332A),
                                fontFamily: "Roboto"
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ]
        )
    );
  }

}