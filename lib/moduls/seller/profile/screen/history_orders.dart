import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class HistoryOrdersSeller extends StatelessWidget{
  bool? bottom;
  HistoryOrdersSeller({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  var sorted ="Июль 2021".obs;
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
        ),):Container(
        height: 1,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child:  Container(
              margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 40
              ),
              height: 40,
              child: Container(
                width: 19,
                height: 16,

                child: Image.asset("assets/image/arrow_left.png"),
              ),
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
              "История заказов",
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
                      "История за:",
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
                      "${sorted.value}  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
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
              Get.bottomSheet(
                  Container(
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
                                "История за:",
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
                            margin: EdgeInsets.only(
                              top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="Весь период"
                                      ? Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                      height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color(0xffD6D6D6),
                                        width: 1
                                      )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Весь период",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="Весь период";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="январь 2021"
                                      ? Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xffD6D6D6),
                                            width: 1
                                        )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "январь 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="январь 2021";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="февраль 2021"
                                      ? Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xffD6D6D6),
                                            width: 1
                                        )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "февраль 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="февраль 2021";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="март 2021"
                                      ? Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xffD6D6D6),
                                            width: 1
                                        )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "март 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="март 2021";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="апрель 2021"
                                      ? Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xffD6D6D6),
                                            width: 1
                                        )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "апрель 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="апрель 2021";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            padding: EdgeInsets.only(left: 5),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  child: sorted.value=="май 2021"
                                      ? Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffFFE9E8)
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    child: Image.asset("assets/image/done.png"),
                                  )
                                      :  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xffD6D6D6),
                                            width: 1
                                        )
                                    ),
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "май 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            sorted.value="май 2021";
                            Get.forceAppUpdate();
                            Get.back();

                          },
                        ),

                      ],
                    ),
                  )
              );
            },
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffE6332A)
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: Colors.white,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "1-6",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-5",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-4",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-3",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-2",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6)
                            ),
                          ),
                          Text(
                            "1-1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Сделка завершена",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff717171),
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