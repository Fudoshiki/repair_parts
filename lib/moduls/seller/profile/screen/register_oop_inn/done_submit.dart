import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';

class DoneSubmit extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;
  DoneSubmit({@required this.bottom});
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
        toolbarHeight: 10,
        leading: Container(),
        elevation: 0,
        backgroundColor:Color(0xffE6332A),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                    child:Container(
                      padding: EdgeInsets.only(top: 12,bottom: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: Get.width-106,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                    ),
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                          hintText: "Поиск запчастей",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          prefixIcon: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 14,
                                                vertical: 12
                                            ),
                                            width: 14,
                                            height: 14,
                                            child: Image.asset(
                                              "assets/image/search_icon.png",
                                              fit: BoxFit.fill,
                                            ),
                                          )
                                      ),
                                    )
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.symmetric(horizontal: 20),
                            height: 22,
                            width: 26,
                            child: Image.asset("assets/image/камера.png"),
                          )
                        ],
                      ),
                    ),
                    onTap:(){
                    }
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    top: 33
                  ),
                  child: Text(
                    "Проверка аккаунта",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20
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
                        child:  Image.asset("assets/image/clock.png",color: Color(0xffE6332A),),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width-137,
                              child: Text(
                                "Данные проверяются администрантором",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                            SizedBox(height: 12,),
                            Container(
                              width: Get.width-137,
                              child: Text(
                                "Пожалуйста, дождитесь оповещения.",
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
        ],
      ),
    );
  }
  
}