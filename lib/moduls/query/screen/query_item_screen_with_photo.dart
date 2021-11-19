import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/query/controller/query_controller.dart';
import 'package:repair_parts/moduls/query/screen/fullscreen_image.dart';

import 'add_address.dart';
import 'query_item_delete.dart';

class QueryItemScreenWithPhoto extends StatelessWidget{
  QueryItemController _queryItemController = Get.put(QueryItemController());
  MainController _mainController =Get.find();
  bool? bottom;
  QueryItemScreenWithPhoto({@required this.bottom});
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
                   try{
                     _mainController.controllerProfilePage.jumpToPage(1);
                   }catch(e){
                     Get.back();
                   }
                 },
               )
              ],
            )
          ),
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
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffE6332A),
                              width: 1
                          )
                      ),
                      child: Image.asset("assets/image/trash.png"),
                    ),
                    onTap: (){
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
                                      height: 102,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xffCBCBCB)
                                                )
                                              )
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Удалить запрос?",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                      width: (Get.width-80)/2,
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right: BorderSide(
                                                                  color: Color(0xffCBCBCB)
                                                              )
                                                          )
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "Удалить",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 16,
                                                              color: Color(0xffE6332A),
                                                              fontFamily: "Roboto"
                                                          ),
                                                        ),
                                                      )
                                                  ),
                                                  onTap: (){
                                                    Get.back();
                                                    _mainController.controllerProfilePage.jumpToPage(4);
                                                  },
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                      width: (Get.width-80)/2,
                                                      child: Center(
                                                        child: Text(
                                                          "Отмена",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 16,
                                                              color: Color(0xff2e2e33),
                                                              fontFamily: "Roboto"
                                                          ),
                                                        ),
                                                      )
                                                  ),
                                                  onTap: (){
                                                    Get.back();
                                                  },
                                                )

                                              ],
                                            )
                                          ),


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
                        top: 18
                    ),
                    child: Text(
                      "Адрес доставки",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    )
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
                            width: Get.width-100,
                            child: Text(
                              "Санкт-Петербург, Прибрежная улица, д.4",
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
                    child: Text(
                      "Категория",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 15
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("assets/image/done.png",color: Color(0xff717171),),
                        ),
                        Text(
                          "КАМАЗ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                      ],
                    )
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 15
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Количество:   ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                      ],
                    )
                ),


                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15,
                    bottom: 9
                  ),
                  child: Text(
                    "Описание",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    bottom: 21
                  ),
                  child: Text(
                    "Текст в голосовом",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
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
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffF3F3F3)
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(
                          left: 10,
                          top: 13,
                          bottom: 13,
                          right: 10
                        ),
                        child: Image.asset("assets/image/Vector.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0,
                            child: Text(
                              "00:15",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 10,
                                  width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE6332A)
                                ),
                              ),
                              Container(
                                width: Get.width-148,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffD6D6D6)
                                ),
                              )
                            ],
                          ),
                          Text(
                            "00:15",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Color(0xff959595),
                                fontFamily: "Roboto"
                            ),
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
                    top: 16
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(
                            right: 9
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xffF3F3F3),
                            image: DecorationImage(
                                image: AssetImage("assets/image/conector.png")
                            )
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xffF3F3F3),
                            image: DecorationImage(
                                image: AssetImage("assets/image/conector.png")
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