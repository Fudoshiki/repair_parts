import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/orders/controller/order_controller.dart';
import 'package:repair_parts/moduls/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/query/screen/query_item_screen.dart';

class QueryScreen extends StatelessWidget{
  ProfileController _profileController = Get.find();
  MainController _mainController =Get.find();
  bool? bottom;
  QueryScreen({@required this.bottom});
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
              try{
                _mainController.controllerProfilePage.jumpToPage(0);
              }catch(e){
                Get.back();
              }
            },
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
            ),
            child: Text(
              "Запросы",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Color(0xff2e2e33),
                  fontFamily: "Roboto"
              ),
            ),
          ),
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                ),
                padding: EdgeInsets.only(
                    bottom: 10
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
                      "${_profileController.sorted.value}  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 6,
                      child: Image.asset("assets/image/arrow_down.png",color: Color(0xff2e2e33),),
                    )
                  ],
                )
            ),
            onTap: (){
              Get.bottomSheet(
                  Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    height: 328,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                        )
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 59,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffE7E7E7),
                                      width: 1
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Статус",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            height: 59,
                            padding: EdgeInsets.only(left: 5),
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
                                  "Все",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: _profileController.sorted.value=="Все"
                                      ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                      : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            _profileController.sorted.value="Все";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 59,
                            padding: EdgeInsets.only(left: 5),
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
                                  "Запрос отправлен",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: _profileController.sorted.value=="Запрос отправлен"
                                      ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                      : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            _profileController.sorted.value="Запрос отправлен";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 59,
                            padding: EdgeInsets.only(left: 5),
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
                                  "Получено предложение",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: _profileController.sorted.value=="Получено предложение"
                                      ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                      : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            _profileController.sorted.value="Получено предложение";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 59,
                            padding: EdgeInsets.only(left: 5),
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
                                  "Предложение обновлено",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: _profileController.sorted.value=="Предложение обновлено"
                                      ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                      : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            _profileController.sorted.value="Предложение обновлено";
                            Get.forceAppUpdate();
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  )
              );
            },
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 22
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    padding: EdgeInsets.only(
                        bottom: 22
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: 26
                              ),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE6332A)

                              ),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "1-6",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Запрос отправлен",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    _mainController.controllerProfilePage.jumpToPage(3);
                  }
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 22
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  padding: EdgeInsets.only(
                      bottom: 22
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: 26
                            ),
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-3",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Получено предложение",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 22
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  padding: EdgeInsets.only(
                      bottom: 22
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: 26
                            ),
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Предложение обновлено",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 22
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  padding: EdgeInsets.only(
                      bottom: 22
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: 26
                            ),
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-17",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Запрос отправлен",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

}