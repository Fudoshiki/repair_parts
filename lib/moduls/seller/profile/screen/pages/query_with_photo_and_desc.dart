import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/query/screen/add_address.dart';
import 'package:repair_parts/moduls/buyer/query/screen/fullscreen_image.dart';

class QueryWithPhotoAndDesc extends StatelessWidget{
  bool? bottom;
  QueryWithPhotoAndDesc({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(height: 70,

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
        backgroundColor: Colors.white,
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
            Container(
                margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 17
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xff717171),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),

                  ],
                )
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 35
                      ),
                      child: Text(
                        "Покупатель",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 15
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
                                    color: Color(0xffDA6468),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Image.asset("assets/image/profile.png"),
                              ),
                              SizedBox(
                                width: 20,
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Сергей",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    "+ 7 (000) 000-00-00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
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
                    Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 36
                        ),
                        child: Text(
                          "Адрес доставки",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
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
                                width: Get.width-100,
                                child: Text(
                                  "Санкт-Петербург, Прибрежная улица, д.4",
                                  style: TextStyle(
                                      color: Color(0xffE6332A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              )
                            ],
                          )
                      ),
                      onTap: (){
                        Get.to(()=>Address());
                      },
                    ),

                    Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        child: Text(
                          "Категория",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffF3F3F3),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/image/done.png",color: Color(0xff717171),),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "КАМАЗ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Количество:   ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            )
                          ],
                        )
                    ),


                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 15,
                          bottom: 9
                      ),
                      child: Text(
                        "Описание",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 21
                      ),
                      child: Text(
                        "Текст в голосовом",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffF3F3F3)
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(
                                left: 10,
                                top: 13,
                                bottom: 13,
                                right: 10
                            ),
                            child: Image.asset("assets/image/Vector.png"),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0,
                                child: Text(
                                  "00:15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      color: Color(0xff959595),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE6332A)
                                    ),
                                  ),
                                  Container(
                                    width: Get.width-148,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffD6D6D6)
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "00:15",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 16
                      ),
                      child: Row(
                        children: [

                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.only(
                                  right: 9
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffF3F3F3),
                                  image: DecorationImage(
                                      image: AssetImage("assets/image/conector.png")
                                  )
                              ),
                            ),
                            onTap:(){
                              Get.to(()=>FullScreenImage());
                            }
                          ),
                          GestureDetector(
                              child: Container(
                                width: 80,
                                height: 80,
                                margin: EdgeInsets.only(
                                    right: 9
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffF3F3F3),
                                    image: DecorationImage(
                                        image: AssetImage("assets/image/conector.png")
                                    )
                                ),
                              ),
                              onTap:(){
                                Get.to(()=>FullScreenImage());
                              }
                          )
                        ],
                      ),
                    ),

                  ],
                )
            ),
            GestureDetector(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6),

                ),
                margin: EdgeInsets.only(
                  top: 26,
                  bottom: 14,
                  left: 20,
                  right: 20
                ),
                child: Center(
                  child: Text(
                    "Создать предложение",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto"
                    ),
                  ),
                ),
              ),
            )

          ],
        )
    );
  }

}