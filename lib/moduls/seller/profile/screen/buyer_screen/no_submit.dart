import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';

class NoSubmitSeller extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;
  NoSubmitSeller({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          Expanded(
            child: ListView(

              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                  ),
                  child: Text(
                    "Добавить организацию",
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
                        right: 20,
                        top: 29
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    padding: EdgeInsets.only(
                        left: 23,
                        right: 23,
                        top: 28,
                        bottom: 24
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child:  Image.asset("assets/image/warn.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Организация не прошла проверку",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: Get.width-136,
                                child: Text(
                                  "Причина отказа.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto",
                                      height: 1.5
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 41
              ),
              decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6)
              ),
              height: 50,
              width: Get.width-40,
              child: Center(
                child: Text(
                  "Редактировать данные",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto"
                  ),
                ),
              ),
            ),
            onTap: (){
              Get.back();
            },
          )
        ],
      ),
    );
  }

}