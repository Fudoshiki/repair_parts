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

class TransportCompany extends StatelessWidget{
  QueryItemController _queryItemController = Get.put(QueryItemController());
  MainController _mainController =Get.find();
  bool? bottom;

  bool open =false;
  TransportCompany({@required this.bottom});
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
                top: 20
            ),
            child: Text(
                "Транспортные компании",
              style: TextStyle(
                  color: Color(0xff2e2e33),
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto"
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20
              ),
              children: [
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Деловые линии",
                      style: TextStyle(
                        color: Color(0xff2e2e33),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Энергия",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Байкал-Сервис",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "GTD",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Почта России",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "CDEK",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "ПЭК",
                      style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            )
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: open?Color(0xffE6332A):Color(0xff959595)
            ),
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 40
            ),
            child: GestureDetector(
              child: Container(
                child: Center(
                  child: Text("Сохранить",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto"
                    ),),
                ),
              ),
              onTap: (){
                if(open){
                  Get.back();
                }
              },
            )
          )
        ],
      )
    );
  }

}