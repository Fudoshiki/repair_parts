import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';

class AttachTK extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;

  var open =false;
  AttachTK({@required this.bottom});
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
          Expanded(
            child: ListView(
              children: [

                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    "Прикрепить трек номер",
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

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Трек номер для отслеживания",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        SizedBox(height: 7,),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 48,
                            width: Get.width-40,
                            padding: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            ),
                            child: TextField(
                              onTap: (){
                              },
                              decoration: InputDecoration(
                                hintText: "Трек номер",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto",
                                  height: 0.1

                                ),
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto",
                                    height: 0.1
                                ),
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            )
                        ),
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
                  color: open? Color(0xffE6332A):Color(0xff959595),
                  borderRadius: BorderRadius.circular(6)
              ),
              height: 50,
              width: Get.width-40,
              child: Center(
                child: Text(
                  "Сохранить",
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
              open=!open;
              Get.forceAppUpdate();
            },
          )
        ],
      ),
    );
  }

}