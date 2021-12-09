import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class SellerScreen extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;

  var currentIndex =0;

  var controller= new PageController(initialPage: 0);
  SellerScreen({@required this.bottom});
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
         Container(
           margin: EdgeInsets.only(
               left: 20,
               right: 20,
               top: 40
           ),
           child:  Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               GestureDetector(
                 child: Container(

                     child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
                 ),
                 onTap: (){
                   Get.back();
                 },
               ),
               Text(
                 "Информация о продавце",
                 style: TextStyle(
                     fontWeight: FontWeight.w700,
                     fontSize: 16,
                     color: Color(0xff2e2e33),
                     fontFamily: "Roboto"
                 ),
               ),
               Opacity(
                 opacity: 0,
                 child: Container(

                     child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
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
          ),
          Container(
            height: 58,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        top: 19,
                        bottom: 19
                    ),
                    child:Text(
                      "Личные данные",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: currentIndex==0?Color(0xff2e2e33): Color(0xff959595),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  onTap: (){
                    controller.jumpToPage(0);
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        top: 19,
                        bottom: 19
                    ),
                    child:Text(
                      "Организации",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: currentIndex==1?Color(0xff2e2e33): Color(0xff959595),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  onTap: (){
                    controller.jumpToPage(1);
                  },
                ),
                GestureDetector(
                    child:Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          top: 19,
                          bottom: 19
                      ),
                      child:Text(
                        "Отзывы",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: currentIndex==2?Color(0xff2e2e33): Color(0xff959595),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  onTap: (){
                    controller.jumpToPage(2);
                  },
                ),
                GestureDetector(
                    child:Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          top: 19,
                          bottom: 19,
                        right: 20
                      ),
                      child:Text(
                        "Транспортные компании",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: currentIndex==3?Color(0xff2e2e33): Color(0xff959595),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  onTap: (){
                    controller.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: PageView(
              onPageChanged: (i){
                currentIndex=i;
                Get.forceAppUpdate();
              },
              controller: controller,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        height: 1,
                        width: Get.width-40,
                        color: Color(0xffE7E7E7),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                        ),
                        padding: EdgeInsets.only(
                          left: 10
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
                            Text(
                              "Телефон:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "+7 (000) 000-00-00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                            Text(
                              "E-mail:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "seller@mail.ru",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                            Text(
                              "Сделок:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            left: 10
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
                            Text(
                              "Возвратов:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
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
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        height: 1,
                        width: Get.width-40,
                        color: Color(0xffE7E7E7),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
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
                                SizedBox(width: 10,),
                                Text(
                                  "ИП Кулачкова В.Р.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 8,
                              height: 14,
                              child: Image.asset("assets/image/arrow_right.png"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
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
                                SizedBox(width: 10,),
                                Text(
                                  "ООО «Ха» ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 8,
                              height: 14,
                              child: Image.asset("assets/image/arrow_right.png"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        height: 1,
                        width: Get.width-40,
                        color: Color(0xffE7E7E7),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                        ),
                        padding: EdgeInsets.only(
                          bottom: 12,left: 10
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                            )
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 31,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Сергей",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  Row(
                                    children: [

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
                                      SizedBox(width: 12,),
                                      Text(
                                        "20.02.2021",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "Ужасное качество доставки! Привезли разбитые детали!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                                maxLines: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            bottom: 12,left: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffE7E7E7),
                                    width: 1
                                )
                            )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 31,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Иван",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  Row(
                                    children: [

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
                                      SizedBox(width: 12,),
                                      Text(
                                        "20.02.2021",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "Ужасное качество доставки! Привезли разбитые детали!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                                maxLines: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        padding: EdgeInsets.only(
                            bottom: 12,left: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffE7E7E7),
                                    width: 1
                                )
                            )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 31,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Максим",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  Row(
                                    children: [

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
                                      SizedBox(width: 12,),
                                      Text(
                                        "20.02.2021",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                            color: Color(0xff717171),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "Ужасное качество доставки! Привезли разбитые детали!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                                maxLines: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                            ),
                            SizedBox(width: 22,),
                            Text(
                              "Деловые линии",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                            ),
                            SizedBox(width: 22,),
                            Text(
                              "ПЭК",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                            ),
                            SizedBox(width: 22,),
                            Text(
                              "Энергия",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                            ),
                            SizedBox(width: 22,),
                            Text(
                              "Байкал-Сервис",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                            ),
                            SizedBox(width: 22,),
                            Text(
                              "CDEK",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto"
                              ),
                            ),
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
                bottom: 21,
                top: 10
            ),
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffE6332A),
                borderRadius: BorderRadius.circular(6)
            ),
            child: Center(
              child: Text(
                "Пожаловаться",
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
      ),
    );
  }

}