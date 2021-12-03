import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'change_delivery_type.dart';

class HistoryOrderItem extends StatelessWidget{
  var currentIndex=1;

  HistoryOrderItem({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  bool open =false;
  bool open2=false;
  bool open3=false;
  bool open4=false;

  var  controller = new PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Container(
                margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Заказ №1-12",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 22,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "23.03.2021 07:45",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
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
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(
                      left: 40,
                      right: 20,
                      top: 5
                  ),


                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Адрес доставки",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE9E8),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child: Image.asset("assets/image/marcker.png",
                                width: 12,height: 18,)
                          ),
                          Container(
                            width: Get.width-140,
                            child: Text(
                              "Санкт-Петербург, Прибрежная улица, д.4",
                              maxLines: 2,
                              style: TextStyle(
                                  color: Color(0xffE6332A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
              onTap: (){
              },
            ),

            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 13
              ),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF3F3F3)
              ),
              child: Row(
                children: [
                  GestureDetector(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color:currentIndex==0 ? Color(0xffE6332A):Color(0xffF3F3F3),
                            borderRadius: BorderRadius.circular(3)
                        ),
                        child: Center(
                          child: Text(
                            "Весь",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: currentIndex==0 ?Color(0xffffffff):Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        controller.jumpToPage(0);
                      }
                  ),
                  GestureDetector(
                      child:Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color:currentIndex==1 ? Color(0xffE6332A):Color(0xffF3F3F3),
                            borderRadius: BorderRadius.circular(3)
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: currentIndex==1 ?Color(0xffffffff):Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        controller.jumpToPage(1);
                      }
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),

            Expanded(
              child: PageView(
                onPageChanged: (i){
                  currentIndex=i;
                  Get.forceAppUpdate();
                },
                controller: controller,
                children: [

                  ListView(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 12
                    ),
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                            top: 7,
                            left: 20,
                            right: 20,
                          ),
                          padding: EdgeInsets.only(
                              bottom: 21
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

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
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          width: Get.width-180,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Количество: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                              Text(
                                                " 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 17
                                ),

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: 17,top:14
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 1,
                                                  color: Color(0xffE7E7E7)
                                              )
                                          )
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сумма, руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: 7,
                            left: 20,
                            right: 20,
                          ),
                          padding: EdgeInsets.only(
                              bottom: 21
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

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
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          width: Get.width-180,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Количество: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                              Text(
                                                " 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 17
                                ),

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: 17,top:14
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 1,
                                                  color: Color(0xffE7E7E7)
                                              )
                                          )
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сумма, руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: 7,
                            left: 20,
                            right: 20,
                          ),
                          padding: EdgeInsets.only(
                              bottom: 21
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

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
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          width: Get.width-180,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Количество: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                              Text(
                                                " 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 17
                                ),

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: 17,top:14
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 1,
                                                  color: Color(0xffE7E7E7)
                                              )
                                          )
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сумма, руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: 14,
                            left: 20,
                            right: 20
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xffE7E7E7)
                                )
                            )
                        ),
                        padding: EdgeInsets.only(
                            bottom: 17
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Итого, руб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "400",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
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
                            bottom: 14
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                                child: Container(
                                    width: (Get.width-50)/2,
                                    height: 31,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    padding: EdgeInsets.all(
                                        6
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Вложения",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    )
                                ),
                                onTap:(){

                                }
                            ),
                            SizedBox(width:10),
                            GestureDetector(
                                child: Container(
                                    width: (Get.width-50)/2,
                                    height: 31,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffE6332A)
                                    ),
                                    padding: EdgeInsets.all(
                                        6
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Повторить запрос",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    )
                                ),
                                onTap:(){

                                }
                            )


                          ],
                        ),
                      )

                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 12
                    ),
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 18
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFB800),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Image.asset("assets/image/profile.png"),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Иван",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Text(
                                      "Продавец",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Row(
                                      children: [
                                        Text(
                                          "3,2",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                        Container(
                                          height: 11,
                                          width: 11,
                                          child: Image.asset(
                                            "assets/image/Star 1.png",
                                            color: Color(0xffFFB800),
                                          ),
                                        ),
                                        Container(
                                          height: 11,
                                          width: 11,
                                          child: Image.asset(
                                            "assets/image/Star 1.png",
                                            color: Color(0xffFFB800),
                                          ),
                                        ),
                                        Container(
                                          height: 11,
                                          width: 11,
                                          child: Image.asset(
                                            "assets/image/Star 1.png",
                                            color: Color(0xffFFB800),
                                          ),
                                        ),
                                        Container(
                                          height: 11,
                                          width: 11,
                                          child: Image.asset(
                                            "assets/image/Star 1.png",
                                            color: Color(0xffC4C4C4),
                                          ),
                                        ),
                                        Container(
                                          height: 11,
                                          width: 11,
                                          child: Image.asset(
                                            "assets/image/Star 1.png",
                                            color: Color(0xffC4C4C4),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/image/phone.png"),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/image/messages.png"),
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
                          top: 18,
                        ),
                        child: Text(
                          "Условия доставки",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 20,
                            top: 11,
                            bottom:14
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(width: 23,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children:[
                                        Text(
                                          "Деловые линии",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff767676),
                                              fontFamily: "Roboto"
                                          ),
                                        ),

                                      ]
                                  ),
                                  SizedBox(
                                      height:6
                                  ),
                                  Row(
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
                                                " 6ва56а5ва65в",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xffE6332A),
                                                    fontFamily: "Roboto",
                                                    decoration: TextDecoration.underline,
                                                    decorationStyle: TextDecorationStyle.dashed
                                                ),
                                              ),

                                            ]
                                        ),
                                      ]
                                  ),
                                  SizedBox(
                                      height:6
                                  ),
                                  //Трек номер: 6ва56а5ва65в
                                  Text(
                                    "Заказ получен: 21.11.21",
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
                            GestureDetector(
                              child:Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                   
                                    color: Color(0xffC4C4C4)
                                ),
                                padding: EdgeInsets.all(7),
                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                              ),
                              onTap: (){
                                open=!open;
                                Get.forceAppUpdate();
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Поставщик: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "ООО Галина Семеновна",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            bottom: 18
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffE7E7E7),
                                    width: 1
                                )
                            )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Цена указана: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "с НДС",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(

                          margin: EdgeInsets.only(
                              top: 8,
                              left: 20,
                              right: 20,
                              bottom: 13
                          ),
                          padding: EdgeInsets.only(
                              bottom: 21
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
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
                                            "Амортизатор гидравлический МТЛБ",
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
                                        Container(
                                            margin:EdgeInsets.only(
                                                top: 23
                                            ),
                                            child:Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Количество: ",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 12,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(
                                    top: 17
                                ),
                                padding: EdgeInsets.only(
                                    bottom: 11
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Цена за ед., руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Количество в наличии, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "0",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Количество под заказ, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Срок под заказ, дн:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сумма, руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
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

                                    GestureDetector(
                                      onTap:(){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            double width = MediaQuery.of(context).size.width;
                                            double height = MediaQuery.of(context).size.height;
                                            return AlertDialog(
                                                backgroundColor: Colors.transparent,
                                                contentPadding: EdgeInsets.zero,
                                                elevation: 0.0,
                                                // title: Center(child: Text("Evaluation our APP")),
                                                content: Container(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: Get.width-26,
                                                        height: 260,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets.only(
                                                                  left: 37,
                                                                  top: 36
                                                              ),
                                                              child: Text(
                                                                "Продавец указал, что заказ вами получен",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.w700,
                                                                    fontSize: 20,
                                                                    color: Color(0xff2e2e33),
                                                                    fontFamily: "Roboto"
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.only(
                                                                  left: 37,
                                                                  top: 17
                                                              ),

                                                              child: Text(
                                                                "Напоминаем, после подтверждения получения груза начинается гарантированный срок возврата: 7 дней",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 12,
                                                                    color: Color(0xff2e2e33),
                                                                    fontFamily: "Roboto"
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.only(
                                                                  left: 14,
                                                                  right: 14,top:19
                                                              ),
                                                              child:  GestureDetector(
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(child: Container(
                                                                      height: 32,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(0xffE6332A),
                                                                          borderRadius: BorderRadius.circular(3)
                                                                      ),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "Подтверждаю",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w700,
                                                                              fontSize: 14,
                                                                              color: Colors.white,
                                                                              fontFamily: "Roboto"
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )),
                                                                    SizedBox(width: 11,),
                                                                    Expanded(child: Container(
                                                                      height: 32,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(0xffE6332A),
                                                                          borderRadius: BorderRadius.circular(3)
                                                                      ),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "Заказ не получен",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w700,
                                                                              fontSize: 14,
                                                                              color: Colors.white,
                                                                              fontFamily: "Roboto"
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ))
                                                                  ],
                                                                ),
                                                                onTap: (){
                                                                  Get.back();
                                                                },
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),


                                                    ],
                                                  ),
                                                )
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
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
                                              "Возврат/обмен",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xffE6332A),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      Container(

                          margin: EdgeInsets.only(
                              top: 8,
                              left: 20,
                              right: 20,
                              bottom: 13
                          ),
                          padding: EdgeInsets.only(
                              bottom: 21
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
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
                                            "Амортизатор гидравлический МТЛБ",
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
                                        Container(
                                            margin:EdgeInsets.only(
                                                top: 23
                                            ),
                                            child:Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Количество: ",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 12,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(
                                    top: 17
                                ),
                                padding: EdgeInsets.only(
                                    bottom: 11
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Цена за ед., руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Количество в наличии, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "0",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Количество под заказ, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Срок под заказ, дн:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
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
                                          bottom: 14
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сумма, руб:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "200",
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
                                            "Возврат/обмен",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xffE6332A),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        )
                                    ),


                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: 14,
                            left: 20,
                            right: 20
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xffE7E7E7)
                                )
                            )
                        ),
                        padding: EdgeInsets.only(
                            bottom: 17
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Итого, руб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "400",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
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
                            bottom: 14
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                                child: Container(
                                    width: (Get.width-50)/2,
                                    height: 31,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    padding: EdgeInsets.all(
                                        6
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Вложения",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    )
                                ),
                                onTap:(){

                                }
                            ),
                            SizedBox(width:10),
                            GestureDetector(
                                child: Container(
                                    width: (Get.width-50)/2,
                                    height: 31,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffE6332A)
                                    ),
                                    padding: EdgeInsets.all(
                                        6
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Повторить запрос",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    )
                                ),
                                onTap:(){

                                }
                            )


                          ],
                        ),
                      )


                    ],
                  ),
                ],

              ),
            ),

          ],
        )
    );

  }

}