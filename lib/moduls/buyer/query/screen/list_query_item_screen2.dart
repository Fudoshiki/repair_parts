import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'add_address.dart';

class ListQueryItemScreen2 extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;

  var a =3;
  var b =3;

  bool open =false;
  bool open1=false;

  bool open2=false;
  bool open3=false;
  bool open4=false;

  int currentIndex =0;

  var controller =PageController(initialPage: 0);


  ListQueryItemScreen2({@required this.bottom});
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
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Row(
                              children:[
                                GestureDetector(
                                    child:Text(
                                      "Список",
                                      style: TextStyle(
                                          color:open?Color(0xffE6332A): Color(0xff767676),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                  onTap: (){
                                    open=!open;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 4,),
                                Container(
                                    width:19,
                                    height: 10,
                                    child:Image.asset("assets/image/change.png")
                                ),
                                SizedBox(width: 4,),

                                GestureDetector(
                                  child:Text(
                                    "Расширенный",
                                    style: TextStyle(
                                        color:!open?Color(0xffE6332A): Color(0xff767676),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  onTap: (){
                                    open=!open;
                                    Get.forceAppUpdate();
                                  },
                                ),
                              ]
                          )
                        ]
                    )
                  ],
                )
            ),

            open? Container(): Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 13
              ),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF3F3F3)
              ),
              child: Row(
                children: [
                  ...List.generate(((Get.width-80)/40).toInt()-1, (index){
                    return GestureDetector(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: currentIndex==index? Color(0xffE6332A):Color(0xffF3F3F3),
                            borderRadius: BorderRadius.circular(3)
                        ),
                        child: Center(
                          child: Text(
                            "${index+1}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: currentIndex==index?Colors.white: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        try{
                          controller.jumpToPage(index);
                        }catch(e){
                        }
                      }
                    );
                  }),
                  Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        "...",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            open? Expanded(
              child: ListView(
                  padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 12
                  ),
                children:[
                  Container(

                      margin: EdgeInsets.only(
                        top: 7,
                        left: 20,
                        right: 20,
                      ),
                      padding: EdgeInsets.only(
                          bottom: 21
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            
                            padding: EdgeInsets.only(
                                bottom: 11
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
                                      width: Get.width-180,
                                      margin: EdgeInsets.only(
                                          bottom: 10
                                      ),
                                      child: Text(
                                        "Установка кронштейнов силового агрегата",
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
                                      margin: EdgeInsets.only(top: 30),
                                      width: Get.width-180,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Количество: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                              " 1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 17
                            ),
                            padding: EdgeInsets.only(
                                bottom: 11
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Цена за ед., руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Сумма, руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                        ],
                      )
                  ),
                  Container(

                      margin: EdgeInsets.only(
                        top: 7,
                        left: 20,
                        right: 20,
                      ),
                      padding: EdgeInsets.only(
                          bottom: 21
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                            padding: EdgeInsets.only(
                                bottom: 11
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
                                      width: Get.width-180,
                                      margin: EdgeInsets.only(
                                          bottom: 10
                                      ),
                                      child: Text(
                                        "Установка кронштейнов силового агрегата",
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
                                      margin: EdgeInsets.only(top: 30),
                                      width: Get.width-180,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Количество: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            " 1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 17
                            ),
                            padding: EdgeInsets.only(
                                bottom: 11
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Цена за ед., руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Сумма, руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                        ],
                      )
                  ),
                  Container(

                      margin: EdgeInsets.only(
                        top: 7,
                        left: 20,
                        right: 20,
                      ),
                      padding: EdgeInsets.only(
                          bottom: 21
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                            padding: EdgeInsets.only(
                                bottom: 11
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
                                      width: Get.width-180,
                                      margin: EdgeInsets.only(
                                          bottom: 10
                                      ),
                                      child: Text(
                                        "Установка кронштейнов силового агрегата",
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
                                      margin: EdgeInsets.only(top: 30),
                                      width: Get.width-180,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Количество: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            " 1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 17
                            ),
                            padding: EdgeInsets.only(
                                bottom: 11
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Цена за ед., руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Сумма, руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                        ],
                      )
                  ),

                  Container(
                    margin: EdgeInsets.only(
                        bottom: 14,
                        left: 20,
                        right: 20
                    ),

                    padding: EdgeInsets.only(
                        bottom: 17
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Итого, руб:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "400",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),
                  ),

                ]
              ),
            ):Expanded(
                child: PageView(
                  onPageChanged: (i){
                    currentIndex=i;
                    Get.forceAppUpdate();
                  },
                    controller: controller,
                  children: [
                    ListView(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 12
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 18
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFB800),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Image.asset("assets/image/profile.png"),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Иван",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        "Продавец",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Text(
                                            "3,2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset("assets/image/phone.png"),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset("assets/image/messages.png"),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
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
                                    width: Get.width-140,
                                    child: Text(
                                      "Санкт-Петербург, Прибрежная улица, д.4",
                                      maxLines: 2,
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Поставщик: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "ООО Галина Семеновна",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20
                          ),
                          padding: EdgeInsets.only(
                              bottom: 13
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Цена указана: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "с НДС",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(

                            margin: EdgeInsets.only(
                              top: 7,
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                                bottom: 21
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  padding: EdgeInsets.only(
                                      bottom: 11
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
                                            width: Get.width-180,
                                            margin: EdgeInsets.only(
                                                bottom: 10
                                            ),
                                            child: Text(
                                              "Установка кронштейнов силового агрегата",
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
                                            margin: EdgeInsets.only(top: 30),
                                            width: Get.width-180,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Количество: ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),
                                                Text(
                                                  " 1",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 17
                                  ),
                                  padding: EdgeInsets.only(
                                      bottom: 11
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Color(0xffE7E7E7)
                                          )
                                      )
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Цена за ед., руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Сумма, руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),
                        Container(

                            margin: EdgeInsets.only(
                              top: 7,
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                                bottom: 21
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  padding: EdgeInsets.only(
                                      bottom: 11
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
                                            width: Get.width-180,
                                            margin: EdgeInsets.only(
                                                bottom: 10
                                            ),
                                            child: Text(
                                              "Установка кронштейнов силового агрегата",
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
                                            margin: EdgeInsets.only(top: 30),
                                            width: Get.width-180,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Количество: ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),
                                                Text(
                                                  " 1",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 17
                                  ),
                                  padding: EdgeInsets.only(
                                      bottom: 11
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Color(0xffE7E7E7)
                                          )
                                      )
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Цена за ед., руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Сумма, руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),

                        Container(
                          margin: EdgeInsets.only(
                              bottom: 14,
                              left: 20,
                              right: 20
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffE7E7E7)
                                  )
                              )
                          ),
                          padding: EdgeInsets.only(
                              bottom: 17
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Итого, руб:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Text(
                                "800",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 14,
                              left: 20,
                              right: 20
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffE7E7E7)
                                  )
                              )
                          ),
                          padding: EdgeInsets.only(
                              bottom: 17
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Итого по заказу, руб:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Text(
                                "1200",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),

                        GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 10
                              ),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6332A),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child: Center(
                                child: Text(
                                  "Купить выбранное",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ),
                            onTap:(){
                               showModalBottomSheet(
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10.0),
                                   ),
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.7,
                                  child: BottomSheet(),
                                );
                              });

                            }
                        )



                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 12
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 18
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFB800),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Image.asset("assets/image/profile.png"),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Иван",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        "Продавец",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Text(
                                            "3,2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset("assets/image/phone.png"),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset("assets/image/messages.png"),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
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
                                    width: Get.width-140,
                                    child: Text(
                                      "Санкт-Петербург, Прибрежная улица, д.4",
                                      maxLines: 2,
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Поставщик: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "ООО Галина Семеновна",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20
                          ),
                          padding: EdgeInsets.only(
                              bottom: 13
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Цена указана: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "с НДС",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(

                            margin: EdgeInsets.only(
                              top: 7,
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                                bottom: 21
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  padding: EdgeInsets.only(
                                      bottom: 11
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
                                            width: Get.width-180,
                                            margin: EdgeInsets.only(
                                                bottom: 10
                                            ),
                                            child: Text(
                                              "Установка кронштейнов силового агрегата",
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
                                            margin: EdgeInsets.only(top: 30),
                                            width: Get.width-180,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Количество: ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),
                                                Text(
                                                  " 1",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color(0xff2e2e33),
                                                      fontFamily: "Roboto"
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 17
                                  ),
                                  padding: EdgeInsets.only(
                                      bottom: 11
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Color(0xffE7E7E7)
                                          )
                                      )
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Цена за ед., руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 14
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Сумма, руб:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            Text(
                                              "200",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),

                        Container(
                          margin: EdgeInsets.only(
                              bottom: 14,
                              left: 20,
                              right: 20
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffE7E7E7)
                                  )
                              )
                          ),
                          padding: EdgeInsets.only(
                              bottom: 17
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Итого, руб:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Text(
                                "400",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 14,
                              left: 20,
                              right: 20
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffE7E7E7)
                                  )
                              )
                          ),
                          padding: EdgeInsets.only(
                              bottom: 17
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Итого по заказу, руб:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Text(
                                "1200",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(
                              bottom: 10
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xffE6332A),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Center(
                            child: Text(
                              "Купить выбранное",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
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

          ],
        )
    );
  }

}
class BottomSheet extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomSheetState();
  }


}
class BottomSheetState extends State<BottomSheet>{
  bool open =false;
  bool open1=true;
  bool open2=false;
  bool open3=false;
  bool open4=false;
  bool open5=false;
  var sorted ="".obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 344,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight:Radius.circular(10),
              topLeft: Radius.circular(10)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Продолжить как",
                        style: TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Container(
                            width: (Get.width-40)/2,
                            height: 30,
                            decoration: BoxDecoration(
                                color: open1?Color(0xffE6332A):Color(0xffF3F3F3),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "Физическое лицо",
                                style: TextStyle(
                                    color:open1?Colors.white: Color(0xff767676),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: (Get.width-40)/2,
                            height: 30,
                            decoration: BoxDecoration(
                                color: !open1?Color(0xffE6332A):Color(0xffF3F3F3),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "Юридическое лицо",
                                style: TextStyle(
                                    color:!open1?Colors.white: Color(0xff767676),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        open1=!open1;
                        Get.forceAppUpdate();
                      },
                    )
                ),
                open1?Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20
                      ),
                      child: Text(
                          "Выберите способ оплаты"
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20
                      ),
                      child: Row(
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
                              open3=false;
                              Get.forceAppUpdate();
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "По карте",
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
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20
                      ),
                      child: Row(
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
                              open2=false;

                              Get.forceAppUpdate();
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "По QR коду",
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

                  ],

                ):Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20
                        ),
                        child: Text(
                            "Выберите одно из ранее созданных"
                        ),
                      ),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        margin: EdgeInsets.only(
                            top: 12,
                            left: 20,
                            right: 20,
                            bottom: 37
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Text(
                                  "Не выбрано",
                                  style: TextStyle(
                                      color: Color(0xff959595),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(6),
                                        topRight: Radius.circular(6)
                                    ),
                                    color: Color(0xffF3F3F3)

                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Color(0xff959595),
                                  ),
                                ),
                              )
                            ],
                          ),
                          onTap: (){
                            Get.bottomSheet(
                                StatusScreen()
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                            "Выберите способ оплаты"
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20
                        ),
                        child: Row(
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
                                open3=false;
                                open2=false;
                                Get.forceAppUpdate();
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "По счету",
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
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20
                        ),
                        child: Row(
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
                                open3=false;
                                open5=false;
                                open2=!open2;
                                Get.forceAppUpdate();
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "По карте",
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
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20
                        ),
                        child: Row(
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
                                open2=false;
                                open5=false;
                                open3=!open3;
                                Get.forceAppUpdate();
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "По QR коду",
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

                    ],

                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16,
                bottom: 20
            ),
            decoration: BoxDecoration(
                color: Color(0xffE6332A),
                borderRadius: BorderRadius.circular(6)
            ),
            height: 50,
            child: Center(
              child: Text(
                "Продолжить",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: "Roboto"
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class StatusScreen extends StatelessWidget{
  var sorted ="".obs;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Организация",
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
                    "ООО СтройГаз",
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
                    child: sorted.value=="ООО СтройГаз"
                        ? Image.asset("assets/image/radio_done.png")
                        : Image.asset("assets/image/radio_off.png"),
                  )
                ],
              ),
            ),
            onTap: (){
              sorted.value="ООО СтройГаз";
              Get.forceAppUpdate();

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
                    "ИП Синичка",
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
                    child: sorted.value=="ИП Синичка"
                        ? Image.asset("assets/image/radio_done.png")
                        : Image.asset("assets/image/radio_off.png"),
                  )
                ],
              ),
            ),
            onTap: (){
              sorted.value="ИП Синичка";
              Get.forceAppUpdate();

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
                    "ООО Планета",
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
                    child: sorted.value=="ООО Планета"
                        ? Image.asset("assets/image/radio_done.png")
                        : Image.asset("assets/image/radio_off.png"),
                  )
                ],
              ),
            ),
            onTap: (){
              sorted.value="ООО Планета";
              Get.forceAppUpdate();

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
                    "Добавить организацию",
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
                    child: sorted.value=="Добавить организацию"
                        ? Image.asset("assets/image/radio_done.png")
                        : Image.asset("assets/image/radio_off.png"),
                  )
                ],
              ),
            ),
            onTap: (){
              sorted.value="Добавить организацию";
              Get.forceAppUpdate();
            },
          ),
        ],
      ),
    );
  }

}