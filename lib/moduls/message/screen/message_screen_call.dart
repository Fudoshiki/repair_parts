import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/message/controller/message_controller.dart';

import 'call_screen.dart';
import 'message_item_screen/message_item_screen_call1.dart';

class MessageScreenCall extends StatelessWidget{
  MessageController _messageController = Get.put(MessageController());
  bool? bottom;
  MessageScreenCall({@required this.bottom});
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
        appBar: AppBar(
          backgroundColor: Color(0xffFFE9E8),
          leading: Container(),
          elevation: 0,
          toolbarHeight: 10,
        ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              height: 33,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              color: Color(0xffFFE9E8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Вернуться к звонку",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                  Text(
                    "03:34:21",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  )
                ],
              ),
            ),
            onTap: (){
              Get.to(CallScreen());
            },

          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10
            ),
            child: Text(
              "Диалоги",
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
              right: 20
            ),
            padding: EdgeInsets.only(
              bottom: 35
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffE7E7E7),
                  width: 1
                )
              )
            ),
            child: Container(
              margin: EdgeInsets.only(
                  top: 10
              ),
              padding: EdgeInsets.only(
                left: 20
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      color: Color(0xffD6D6D6),
                      width: 1
                  )
              ),
              child: TextField(
               style: TextStyle(
                    color: Color(0xff2e2e33),
                    fontSize: 14,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    height: 1.5
                ),
                decoration: InputDecoration(
                    hintText: "Поиск",
                    hintStyle: TextStyle(
                        color: Color(0xff959595),
                        fontSize: 14,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        height: 1.5
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    suffixIcon: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 14
                      ),
                      width: 14,
                      height: 14,
                      child: Image.asset(
                        "assets/image/search_icon.png",
                        fit: BoxFit.fill,
                      ),
                    )
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      height: 100,
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Имя продавца",
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
                                    "Заказ 1-6",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 13,
                                    height: 10,
                                    margin: EdgeInsets.only(
                                        right: 5
                                    ),
                                    child: Image.asset("assets/image/done1.png"),
                                  ),
                                  Text(
                                    "18:41",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff959595),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Добрый день, какая ТК для вас пред...",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff717171),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      )
                  ),
                  onTap: (){
                    Get.to(MessageItemScreenCall3());
                  },
                ),

                GestureDetector(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Имя продавца",
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
                                    "Заказ 1-5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "24.03.2021",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff959595),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "УПД-файл.pdf",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Color(0xffE6332A),
                                    shape: BoxShape.circle
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
                              )

                            ],
                          )
                        ],
                      )
                  ),
                  onTap: (){
                    Get.to(MessageItemScreenCall3());
                  },
                ),

                GestureDetector(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Имя продавца",
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
                                    "Заказ 1-3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [

                                  Text(
                                    "15.03.2021",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff959595),
                                        fontFamily: "Roboto"
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 27,
                                    height: 27,
                                    child:  Image.asset("assets/image/images.png"),
                                  ),
                                  Text(
                                    "Фотография",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff717171),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Color(0xffE6332A),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text(
                                    "100",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                              )

                            ],
                          )
                        ],
                      )
                  ),
                  onTap: (){
                    Get.to(MessageItemScreenCall3());
                  },
                ),

                GestureDetector(
                  child: Container(
                      height: 100,

                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      padding: EdgeInsets.only(
                          top: 15,
                          bottom: 12
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Имя продавца",
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
                                    "Заказ 1-3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 10,
                                    margin: EdgeInsets.only(
                                        right: 5
                                    ),
                                    child: Image.asset("assets/image/done2.png"),
                                  ),
                                  Text(
                                    "04.03.2021",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff959595),
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Голосовое сообщение",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff717171),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      )
                  ),
                  onTap: (){
                    Get.to(MessageItemScreenCall3());
                  },
                ),


              ],
            )
          )
        ],
      )
    );
  }

}