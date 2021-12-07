import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/pages/register_page.dart';

class ProfileScreenBlockSeller extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  ProfileScreenBlockSeller({@required this.bottom});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
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
                      top: 103
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 21,
                      vertical: 26
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 32,
                        height: 26,
                        child: Image.asset("assets/image/lot.png"),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width-126,
                            child: Text(
                              "Ваша страница заблокирована менеджером сайта",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Roboto",
                                color: Color(0xff2e2e33),

                              ),
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Не соблюдаются условия договора с Inf.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                color: Color(0xff2e2e33)
                            ),
                          ),
                          SizedBox(height: 19,),
                          Text(
                            "До разблокировки осталось:",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                color: Color(0xff2e2e33)
                            ),
                          ),
                          SizedBox(height: 5,),
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
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 21
              ),
              height: 38,
              decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Чат с менеджером",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        color: Colors.white
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 13
                    ),
                    width: 23,
                    height: 20,
                    child: Image.asset("assets/image/Mail Icon.png"),
                  )
                ],
              ),
            )
          ],
        )
    );
  }

}