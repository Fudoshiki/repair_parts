import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class ChangeDeliveryType extends StatelessWidget{
  bool? bottom;

  bool open =false;
  bool open1 =false;
  bool open2 =false;
  bool open3 =false;
  bool open4 =false;
  bool open5 =false;
  bool open6 =false;
  bool open7 =false;
  bool open8 =false;

  ChangeDeliveryType({@required this.bottom});
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
                          Get.back();
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
                "Изменить условия доставки",
                style: TextStyle(
                    color: Color(0xff2e2e33),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
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
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 21
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffE7E7E7),
                            width:1
                          )
                        )
                      ),
                      child: Row(
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
                              open1=false;
                              open2=false;
                              open3=false;
                              open4=false;
                              open5=false;
                              open6=false;
                              open7=false;

                              Get.forceAppUpdate();
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Самовывоз",
                            style: TextStyle(
                                color: Color(0xff2e2e33),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child:open1? Container(
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
                            open1=!open1;
                            open=false;
                            open2=false;
                            open3=false;
                            open4=false;
                            open5=false;
                            open6=false;
                            open7=false;

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
                          child:open2? Container(
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
                            open2=!open2;
                            open1=false;
                            open=false;
                            open3=false;
                            open4=false;
                            open5=false;
                            open6=false;
                            open7=false;
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
                          child:open3? Container(
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
                            open3=!open3;
                            open1=false;
                            open=false;
                            open2=false;
                            open4=false;
                            open5=false;
                            open6=false;
                            open7=false;
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
                          child:open4? Container(
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
                            open4=!open4;
                            open1=false;
                            open=false;
                            open3=false;
                            open2=false;
                            open5=false;
                            open6=false;
                            open7=false;
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
                          child:open5? Container(
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
                            open5=!open5;
                            open1=false;
                            open=false;
                            open3=false;
                            open4=false;
                            open2=false;
                            open6=false;
                            open7=false;
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
                          child:open6? Container(
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
                            open6=!open6;
                            open1=false;
                            open=false;
                            open3=false;
                            open4=false;
                            open5=false;
                            open2=false;
                            open7=false;
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
                          child:open7? Container(
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
                            open7=!open7;
                            open1=false;
                            open=false;
                            open3=false;
                            open4=false;
                            open5=false;
                            open6=false;
                            open2=false;
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
                    color: open||open1||open2||open3||open4||open5||open6||open7?Color(0xffE6332A):Color(0xff959595)
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