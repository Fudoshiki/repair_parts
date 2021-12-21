import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/buyer_send_feedback.dart';
import 'package:repair_parts/moduls/seller/profile/screen/buyer_screen/card_ip_screen.dart';

import 'card_ooo_screen.dart';

class BuyerScreen extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;

  var currentIndex =0;

  var controller= new PageController(initialPage: 0);
  BuyerScreen({@required this.bottom});
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
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40
            ),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(

                      child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
                  ),
                  onTap: (){
                    Get.back();
                  },
                ),
                Text(
                  "Информация о покупателе",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff2e2e33),
                      fontFamily: "Roboto"
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Container(

                      child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffDA6468),
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
                      "Фамилия Имя Отчество",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text(
                      "Покупатель",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 53,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        top: 21,
                        bottom: 14
                    ),
                    child:Text(
                      "Личные данные",
                      style: TextStyle(
                          fontWeight:currentIndex==0? FontWeight.w600:FontWeight.w400,
                          fontSize: 12,
                          color: currentIndex==0?Color(0xff2e2e33): Color(0xff959595),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  onTap: (){
                    controller.jumpToPage(0);
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        top: 19,
                        bottom: 19
                    ),
                    child:Text(
                      "Организации",
                      style: TextStyle(
                          fontWeight:currentIndex==1? FontWeight.w600:FontWeight.w400,
                          fontSize: 12,
                          color: currentIndex==1?Color(0xff2e2e33): Color(0xff959595),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  onTap: (){
                    controller.jumpToPage(1);
                  },
                ),
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
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        height: 1,
                        width: Get.width-40,
                        color: Color(0xffE7E7E7),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Телефон:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "+7 (000) 000-00-00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "E-mail:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "seller@mail.ru",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Запросов:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Покупок:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Возвратов:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Полученых жалоб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Отправленных жалоб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
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
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        height: 1,
                        width: Get.width-40,
                        color: Color(0xffE7E7E7),
                      ),
                      GestureDetector(
                        child:  Container(
                          height: 50,
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(
                                    "ИП Кулачкова В.Р.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
                          Get.to(()=>CardIPScreenBuyer(bottom: true));

                        },
                      ),
                      GestureDetector(
                        child:   Container(
                          height: 50,
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(
                                    "ООО «Ха» ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
                          Get.to(()=>CardOOOScreenBuyer(bottom: true));

                        },
                      ),
                      //

                    ],
                  ),
                ),

              ],
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 21,
                  top: 10
              ),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Text(
                  "Пожаловаться",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Roboto"
                  ),
                ),
              ),
            ),
            onTap: (){
              Get.to(()=>BuyerSendFeedback(bottom: true));
            },
          )

        ],
      ),
    );
  }

}