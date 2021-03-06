import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/seller/profile/controller/profile_controller.dart';

class QueryScreenSeller extends StatelessWidget{
  ProfileControllerSeller _profileController = Get.put(ProfileControllerSeller());
  bool? bottom;
  QueryScreenSeller({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

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

                Get.back();
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
                          fontWeight: FontWeight.w600,
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
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.7,
                      child: Container(
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
                                          fontWeight: FontWeight.w600,
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
                                      "Запрос",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: _profileController.sorted.value=="Запрос"
                                          ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                          : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){
                                _profileController.sorted.value="Запрос";
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
                                      "Запрос на обновление",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: _profileController.sorted.value=="Запрос на обновление"
                                          ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                          : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){
                                _profileController.sorted.value="Запрос на обновление";
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
                                      "Предложение отправлено",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: _profileController.sorted.value=="Предложение отправлено"
                                          ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                          : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){
                                _profileController.sorted.value="Предложение отправлено";
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
                                      "Запрос по фото/описанию",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: _profileController.sorted.value=="Запрос по фото/описанию"
                                          ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                          : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){
                                _profileController.sorted.value="Запрос по фото/описанию";
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
                                      "Истек срок предложения",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: _profileController.sorted.value=="Истек срок предложения"
                                          ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                          : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){
                                _profileController.sorted.value="Истек срок предложения";
                                Get.forceAppUpdate();
                                Get.back();
                              },
                            ),

                          ],
                        ),
                      )
                    );
                  });
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
                                      fontWeight: FontWeight.w600,
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
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Запрос на обновление",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: (){
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
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Запрос",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                                fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
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
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Запрос по фото/описанию",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Истек срок предложения",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
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