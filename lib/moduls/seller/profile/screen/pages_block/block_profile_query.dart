import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/list_all_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/register_page.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/screen_block_query.dart';

class ProfileScreenBlockQuerySeller extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  ProfileScreenBlockQuerySeller({@required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffFFB800),
                                borderRadius: BorderRadius.circular(
                                    5
                                )
                            ),
                            child: Image.asset("assets/image/profile.png"),
                          ),
                          onTap:(){

                          }
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Иванов Иван Иванович",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Roboto",
                                  color: Color(0xff2e2e33)
                              ),
                            ),
                            SizedBox(height: 3,),
                            Row(
                              children: [
                                Text(
                                  "3,2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(width: 9,),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xffF3F3F3)
                        ),
                        height: 30,
                        width: (Get.width-54)/2,
                        child: Center(
                          child: Text(
                            "Покупатель",
                            style: TextStyle(
                                color: Color(0xffE6332A),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xffFFE9E8)
                            ),
                            height: 30,
                            width: (Get.width-54)/2,
                            child: Center(
                              child: Text(
                                "Продавец",
                                style: TextStyle(
                                    color: Color(0xffE6332A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                          }
                      )

                    ],
                  ),
                ),


                GestureDetector(
                  child: Container(
                    height: 60,

                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 16,left: 14,
                        top: 21
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/zap.png",color: Color(0xffE6332A).withOpacity(0.27),),
                            ),
                            Text(
                              "Запросы",
                              style: TextStyle(
                                  color: Color(0xff2E2E33).withOpacity(0.23),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '420 ',
                                    style: TextStyle(
                                        color: Color(0xff2e2e33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ч. ',
                                    style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",

                                    ),
                                  ),
                                  TextSpan(
                                    text: '28 ',
                                    style: TextStyle(
                                        color: Color(0xff2e2e33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' м. ',
                                    style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",

                                    ),
                                  ),
                                  TextSpan(
                                    text: '4 ',
                                    style: TextStyle(
                                        color: Color(0xff2e2e33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'с. ',
                                    style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 24,),
                            Container(
                              width: 8,
                              height: 14,
                              child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                  onTap: (){
                    Get.to(BlockQueryScreen());
                  },
                ),

                GestureDetector(
                  child: Container(
                    height: 60,

                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/orde.png"),
                            ),
                            Text(
                              "Заказы",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: 8
                                ),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffE6332A)
                                ),
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                        Container(
                          width: 8,
                          height: 14,
                          child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                        )

                      ],
                    ),
                  ),

                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/hist.png"),
                          ),
                          Text(
                            "История заказов",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/back.png"),
                          ),
                          Text(
                            "Возврат/обмен",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/pencil.png"),
                          ),
                          Text(
                            "Основные данные",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/menuse.png"),
                          ),
                          Text(
                            "Выбор категории",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/instagrame.png"),
                          ),
                          Text(
                            "Оцифровка",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  height: 60,

                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/money.png"),
                          ),
                          Text(
                            "Вознаграждение",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 60,

                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    child: GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(
                                    right: 20
                                ),
                                child: Image.asset("assets/image/inf.png"),
                              ),
                              Text(
                                "Информация",
                                style: TextStyle(
                                    color: Color(0xff2E2E33),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: (){
                        Get.to(ListAllScreen());
                      },
                    )
                ),
                GestureDetector(
                  child: Container(
                    height: 60,

                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/exit.png"),
                            ),
                            Text(
                              "Выйти",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  onTap: (){
                    Get.dialog(
                      Center(
                        child: Container(
                          height: 141,
                          width: Get.width-40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                          ),
                          child:Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 5,right: 5),
                                  height: 90,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffCBCBCB),
                                              width: 1
                                          )
                                      )
                                  ),
                                  child: Scaffold(
                                    body: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Обратите внимание",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                              "Вы уверены, что хотите выйти?",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                height: 50,
                                padding: EdgeInsets.only(left: 5,right: 5),

                                child: Scaffold(
                                  body: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      color: Color(0xffCBCBCB),
                                                      width: 1
                                                  )
                                              )
                                          ),
                                          width: (Get.width-50)/2,
                                          child: Center(
                                            child: Text(
                                              "Выйти",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xffE6332A)
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Get.back();
                                        },
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: (Get.width-50)/2,
                                          child: Center(
                                            child: Text(
                                              "Отмена",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),

              ],
            ),
          )
        ],
      ),
    );

  }

}