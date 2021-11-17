import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/query/controller/query_controller.dart';
import 'package:repair_parts/moduls/query/screen/fullscreen_image.dart';

import 'add_address.dart';
import 'query_item_delete.dart';

class QueryItemScreen extends StatelessWidget{
  QueryItemController _queryItemController = Get.put(QueryItemController());
  MainController _mainController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                   _mainController.controllerProfilePage.jumpToPage(1);
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
                        bottom: 21
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
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Color(0xffE7E7E7)
                          )
                      )
                  ),
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 13,
                    top: 14
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21
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
                        padding: EdgeInsets.all(15),
                        child: Image.asset("assets/image/no_image.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width-140,
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
                            margin: EdgeInsets.only(
                              top: 30
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Количество: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2E2E33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2E2E33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            )
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Color(0xffE7E7E7)
                          )
                      )
                  ),
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 13,
                      top: 14
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21
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
                            width: Get.width-140,
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
                              margin: EdgeInsets.only(
                                  top: 30
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Количество: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff2E2E33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xff2E2E33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              )
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
                    top: 17,
                    bottom: 8
                  ),
                  child: Text(
                    "Комментарий",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    bottom: 16
                  ),
                  child: Text(
                    "Очень срочно нуууууууужно ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                )
              ],
            )
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                  bottom: 7
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFE9E8),
                  borderRadius: BorderRadius.circular(6)
              ),
              height: 31,
              child: Center(
                child: Text(
                  "Вложения",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff2e2e33),
                      fontFamily: "Roboto"
                  ),
                ),
              ),
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
                                      "Вложения",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 37,
                                          top: 29
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Color(0xffE6332A)
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "image22121",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Color(0xffE6332A),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                      Get.to(FullScreenImage());
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 37,
                                          top: 14
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Color(0xffE6332A)
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "image222",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color(0xffE6332A),
                                          fontFamily: "Roboto",

                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                      Get.to(FullScreenImage());
                                    },
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
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 31
            ),
            decoration: BoxDecoration(
              color: Color(0xffE6332A),
              borderRadius: BorderRadius.circular(6)
            ),
            height: 50,
            child: Center(
              child: Text(
                "Предложения",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                    fontFamily: "Roboto"
                ),
              ),
            ),
          )
        ],
      )
    );
  }

}