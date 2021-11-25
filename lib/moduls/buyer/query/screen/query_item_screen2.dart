import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'add_address.dart';
import 'query_item_delete.dart';

class QueryItemScreen2 extends StatelessWidget{
  bool? bottom;

  var a =3;
  var b =3;

  bool open =false;
  bool open2=false;
  bool open3=false;
  bool open4=false;

  QueryItemScreen2({@required this.bottom});
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
                          "Запрос №1-6",
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
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20
              ),
              child: Row(
                children: [
                  Text(
                    "Регион:  Все  ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                  Image.asset("assets/image/arrow_down.png",width: 10,height: 5,color: Color(0xff2e2e33),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 32
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffF3F3F3)
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffE6332A),
                      borderRadius: BorderRadius.circular(3)
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffffffff),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  ...List.generate(((Get.width-80)/40).toInt()-2, (index){
                    return Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text(
                          "${index+2}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ),
                    );
                  }),
                  Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        "...",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 12
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Предложение 1",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Действует еще: 4 дня, 15 часов, 42 минуты",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
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
                    GestureDetector(
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 15
                          ),
                          padding: EdgeInsets.only(
                              bottom: 18
                          ),

                          child: Row(
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
                      ),
                      onTap: (){
                        Get.to(Address());
                      },
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
                        bottom: 13
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
                          top: 7,
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
                                      width: Get.width-180,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            child:open? Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: Color(0xffE6332A),
                                                      width: 1
                                                  ),
                                                color: Color(0xffE6332A)
                                              ),
                                              padding: EdgeInsets.all(7),
                                              child: Image.asset("assets/image/done.png",color: Colors.white,),
                                            )
                                                :Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: Color(0xffE6332A),
                                                      width: 1
                                                  )
                                              ),
                                            ),
                                            onTap: (){
                                              open=!open;
                                              Get.forceAppUpdate();
                                            },
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
                            padding: EdgeInsets.only(
                              bottom: 15
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            margin: EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  child: Text(
                                    "Количество: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Color(0xffE6332A)
                                          ),
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(1),
                                                  color: Color(0xffffffff)
                                              ),
                                              width: 12,
                                              height: 2,
                                            ),
                                          )
                                      ),
                                      onTap: (){
                                        if(a==2){

                                        }else{
                                          a-=1;
                                          Get.forceAppUpdate();
                                        }
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 13
                                      ),
                                      child: Text(
                                          "${
                                              a
                                          }",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Color(0xffE6332A)
                                          ),
                                          child: Center(
                                            child: Container(
                                              height: 12,
                                              width: 12,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    top:5,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(1),
                                                          color: Colors.white
                                                      ),
                                                      width: 12,
                                                      height: 2,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 5,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(1),
                                                          color: Colors.white
                                                      ),
                                                      width: 2,
                                                      height: 12,
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      onTap: (){
                                        if(a==12){

                                        }else{
                                          a+=1;
                                          Get.forceAppUpdate();

                                        }
                                      },
                                    )
                                  ],
                                ),

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
                                        width: Get.width-180,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              child:open2? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffE6332A),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffE6332A)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Colors.white,),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffE6332A),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open2=!open2;
                                                Get.forceAppUpdate();
                                              },
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
                              padding: EdgeInsets.only(
                                  bottom: 15
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: Color(0xffE7E7E7)
                                      )
                                  )
                              ),
                              margin: EdgeInsets.only(top: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                    child: Text(
                                      "Количество: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Color(0xffE6332A)
                                            ),
                                            child: Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(1),
                                                    color: Color(0xffffffff)
                                                ),
                                                width: 12,
                                                height: 2,
                                              ),
                                            )
                                        ),
                                        onTap: (){
                                          if(b==2){

                                          }else{
                                            b-=1;
                                            Get.forceAppUpdate();
                                          }
                                        },
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 13
                                        ),
                                        child: Text(
                                          "${
                                              b
                                          }",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Color(0xffE6332A)
                                            ),
                                            child: Center(
                                              child: Container(
                                                height: 12,
                                                width: 12,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      top:5,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(1),
                                                            color: Colors.white
                                                        ),
                                                        width: 12,
                                                        height: 2,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 5,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(1),
                                                            color: Colors.white
                                                        ),
                                                        width: 2,
                                                        height: 12,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        onTap: (){
                                          if(b==12){

                                          }else{
                                            b+=1;
                                            Get.forceAppUpdate();

                                          }
                                        },
                                      )
                                    ],
                                  ),

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
                          bottom: 14,
                          left: 20,
                          right: 20
                      ),

                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Самовывоз",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                          GestureDetector(
                            child:open3? Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffE6332A),
                                      width: 1
                                  ),
                                  color: Color(0xffE6332A)
                              ),
                              padding: EdgeInsets.all(7),
                              child: Image.asset("assets/image/done.png",color: Colors.white,),
                            )
                                :Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffE6332A),
                                      width: 1
                                  )
                              ),
                            ),
                            onTap: (){
                              open3=!open3;
                              Get.forceAppUpdate();
                            },
                          )

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 14,
                          left: 20,
                          right: 20
                      ),

                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Доставка",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                          GestureDetector(
                            child:open4? Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffE6332A),
                                      width: 1
                                  ),
                                  color: Color(0xffE6332A)
                              ),
                              padding: EdgeInsets.all(7),
                              child: Image.asset("assets/image/done.png",color: Colors.white,),
                            )
                                :Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffE6332A),
                                      width: 1
                                  )
                              ),
                            ),
                            onTap: (){
                              open4=!open4;
                              Get.forceAppUpdate();
                            },
                          )

                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        bottom: 14
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 31,

                              decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffE6332A),
                                width: 1
                              ),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            padding: EdgeInsets.all(
                              6
                            ),
                            child:Center(
                              child: Text(
                                "Посмотреть",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffe6332a),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            )
                          ),
                          SizedBox(width: 7,),
                          Container(
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
                          SizedBox(width: 7,),
                          Expanded(
                            child: Container(
                                height: 31,

                                decoration: BoxDecoration(
                                    color: open3?Color(0xffE6332A):Color(0xff959595),

                                    borderRadius: BorderRadius.circular(6)
                                ),
                                padding: EdgeInsets.all(
                                    6
                                ),
                                child:Center(
                                  child: Text(
                                    "Купить",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color:Colors.white,
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

          ],
        )
    );
  }

}