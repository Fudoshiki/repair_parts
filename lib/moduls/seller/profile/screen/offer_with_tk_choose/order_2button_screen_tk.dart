import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/buyer/home/controller/home_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/orders/controller/order_controller.dart';

class OrderScreenItem2ButtonSeller extends StatefulWidget {
  bool? bottom;
  OrderScreenItem2ButtonSeller({@required this.bottom});
  @override
  State<StatefulWidget> createState() {
    return OrderScreenItemSellerState();
  }
}
class OrderScreenItemSellerState extends State<OrderScreenItem2ButtonSeller>{
  OrderController _orderController = Get.put(OrderController());
  MainController _mainController =Get.find();

  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: widget.bottom!=null? SizedBox(
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
              true,
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
              padding: EdgeInsets.only(
                  top: 0
              ),
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 17,
                        bottom: 48
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Заказ №1-12",
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
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                  ),
                  child:Text(
                    "Покупатель",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 9
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
                                "Имя",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(height: 3,),
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
                      top: 14
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Плательщик: ",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(width:16),
                      Text(
                        "Фамилия Имя Отчество",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 18,
                      top: 26
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 16,
                        ),
                        child: Text(
                          "Адрес доставки",
                          style: TextStyle(
                              color: Color(0xff2E2E33),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Roboto"
                          ),
                        ),
                      ),
                      Container(
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
                              width: Get.width-108,
                              child: Text(
                                "Санкт-Петербург, Прибрежная улица, д.4",
                                style: TextStyle(
                                    color: Color(0xffE6332A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto"
                                ),
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
                  ),
                  child: Text(
                    "Условия доставки",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20,
                      top: 11,
                      bottom:14,
                      right: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width:40,
                          height:40,
                          decoration: BoxDecoration(
                              color:Color(0xffF3F3F3),
                              borderRadius:BorderRadius.circular(4)
                          ),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("assets/image/box.png")
                      ),
                      SizedBox(width: 23,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                children:[
                                  Text(
                                    "Деловые линии",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // GestureDetector(
                                  //     child:Text(
                                  //       "Изменить",
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.w400,
                                  //           fontSize: 14,
                                  //           color: Color(0xffE6332A),
                                  //           fontFamily: "Roboto",
                                  //           decoration: TextDecoration.underline
                                  //       ),
                                  //     ),
                                  //     onTap:(){
                                  //       // Get.to(ChangeDeliveryType());
                                  //     }
                                  // ),
                                ]
                            ),
                            SizedBox(
                                height:6
                            ),
                            Row(
                                children:[
                                  Text(
                                    "Трек номер:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                      children:[
                                        Text(
                                          " _ _ _ _ _ _ _ _ _ _ _ _ _ _",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff767676),
                                              fontFamily: "Roboto",
                                          ),
                                        ),

                                      ]
                                  ),
                                ]
                            ),
                            SizedBox(
                                height:6
                            ),
                            Text(
                              "Заказ получен: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color(0xffE6332A),
                                width: 1
                            ),
                        ),
                        padding: EdgeInsets.all(7),
                      )
                    ],
                  ),
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
                        "Организация: ",
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
                            color: Color(0xff2e2e33),
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
                      right: 20,
                      bottom: 10
                  ),
                  padding: EdgeInsets.only(
                      bottom: 18
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
                        "Цена указана: с НДС",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Комиссия: 10%",
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
                Container(
                  margin: EdgeInsets.only(
                      left: 20
                  ),
                  child: Column(
                    children: [
                      Container(

                          margin: EdgeInsets.only(
                            top: 8,
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
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
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
                                            "Амортизатор гидравлический МТЛБ",
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
                                            margin:EdgeInsets.only(
                                                top: 23
                                            ),
                                            child:Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Количество: ",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 12,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
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
                                                fontWeight: FontWeight.w600,
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
                                            "Количество в наличии, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                            "Количество под заказ, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                            "Срок под заказ, дн:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                                fontWeight: FontWeight.w600,
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
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Color(0xffE7E7E7)
                                        )
                                    )
                                ),
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
                                            "Амортизатор гидравлический МТЛБ",
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
                                            margin:EdgeInsets.only(
                                                top: 23
                                            ),
                                            child:Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Количество: ",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 12,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
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
                                                fontWeight: FontWeight.w600,
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
                                            "Количество в наличии, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                            "Количество под заказ, шт:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                            "Срок под заказ, дн:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                                fontWeight: FontWeight.w600,
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
                              "2300",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
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
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Комиссия, руб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "230",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
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
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "За вычетом комиссии, руб:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "2000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
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
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CASH, руб.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Text(
                              "33",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
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
                  margin: EdgeInsets.only(
                      bottom: 14,
                      right: 20,
                      left: 20
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                          child: Container(
                              width: (Get.width-50)/2,
                              height: 31,
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffFFE9E8)
                              ),
                              padding: EdgeInsets.all(
                                  6
                              ),
                              child:Center(
                                child: Text(
                                  "Вложения",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              )
                          ),
                          onTap:(){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                double width = MediaQuery.of(context).size.width;
                                double height = MediaQuery.of(context).size.height;
                                return AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    contentPadding: EdgeInsets.zero,
                                    elevation: 0.0,
                                    // title: Center(child: Text("Evaluation our APP")),
                                    content: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width-26,
                                            height: 260,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 36
                                                  ),
                                                  child: Text(
                                                    "Вложения",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 24,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 12
                                                  ),
                                                  child: Text(
                                                    "Файлы",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 37,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Color(0xffE6332A)
                                                            )
                                                        )
                                                    ),
                                                    child: Text(
                                                      "image22121",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 18,
                                                          color: Color(0xffE6332A),
                                                          fontFamily: "Roboto"
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: (){
                                                  },
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 12
                                                  ),
                                                  child: Text(
                                                    "Транспортная накладная",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 37,
                                                        top: 14
                                                    ),
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Color(0xffE6332A)
                                                            )
                                                        )
                                                    ),
                                                    child: Text(
                                                      "image222",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xffE6332A),
                                                        fontFamily: "Roboto",

                                                      ),
                                                    ),
                                                  ),
                                                  onTap: (){
                                                  },
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left: 37,
                                                    top: 6
                                                  ),
                                                  child: Image.asset("assets/image/adede.png",color: Color(0xffC00000),),
                                                )
                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    )
                                );
                              },
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                double width = MediaQuery.of(context).size.width;
                                double height = MediaQuery.of(context).size.height;
                                return AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    contentPadding: EdgeInsets.zero,
                                    elevation: 0.0,
                                    // title: Center(child: Text("Evaluation our APP")),
                                    content: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width-26,
                                            height: 260,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 36
                                                  ),
                                                  child: Text(
                                                    "Вложения",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 24,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 12
                                                  ),
                                                  child: Text(
                                                    "Файлы",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      left: 37,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Color(0xffE6332A)
                                                            )
                                                        )
                                                    ),
                                                    child: Text(
                                                      "image22121",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 18,
                                                          color: Color(0xffE6332A),
                                                          fontFamily: "Roboto"
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: (){
                                                  },
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 12
                                                  ),
                                                  child: Text(
                                                    "Транспортная накладная",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 37,
                                                      top: 6
                                                  ),
                                                  child: Image.asset("assets/image/adede.png",color: Color(0xffC00000),),
                                                )
                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    )
                                );
                              },
                            );
                          }
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                          child: Container(
                              width: (Get.width-50)/2,
                              height: 31,
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffE6332A)
                              ),
                              padding: EdgeInsets.all(
                                  6
                              ),
                              child:Center(
                                child: Text(
                                  "Прикрепить трек",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              )
                          ),
                      )


                    ],
                  ),
                )


              ],
            ),
          )
        ],
      ),
    );
  }

}