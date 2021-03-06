import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/models/rows_orders.dart';
import 'package:repair_parts/moduls/buyer/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/buyer/home/controller/home_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/orders/controller/order_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';

class OrderScreen extends StatelessWidget{
  OrderController _orderController = Get.put(OrderController());
  MainController _mainController =Get.find();
  bool? bottom;
  OrderScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  ProfileController profileController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom!=null?         SizedBox(height: 70,


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
                      Get.back();
                    },
                  )
                ],
              )
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
            ),
            child: Text(
              "Заказы",
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
                      "Статус:",
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
                      "${_orderController.sorted.value}  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
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
                                "Статус",
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
                                "Все",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: _orderController.sorted.value=="Все"
                                    ? Image.asset("assets/image/radio_done.png", color: Color(0xffE6332A),)
                                    : Image.asset("assets/image/radio_off.png", color: Color(0xffE6332A),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          _orderController.sorted.value="Все";
                          Get.forceAppUpdate();
                          Get.back();

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
                                "Заказ оплачен",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: _orderController.sorted.value=="Заказ оплачен"
                                    ? Image.asset("assets/image/radio_done.png", color: Color(0xffE6332A),)
                                    : Image.asset("assets/image/radio_off.png", color: Color(0xffE6332A),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          _orderController.sorted.value="Заказ оплачен";
                          Get.forceAppUpdate();
                          Get.back();

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
                                "Заказ отгружен",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: _orderController.sorted.value=="Заказ отгружен"
                                    ? Image.asset("assets/image/radio_done.png", color: Color(0xffE6332A),)
                                    : Image.asset("assets/image/radio_off.png", color: Color(0xffE6332A),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          _orderController.sorted.value="Заказ отгружен";
                          Get.forceAppUpdate();
                          Get.back();

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
                                "Заказ выдан",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: _orderController.sorted.value=="Заказ выдан"
                                    ? Image.asset("assets/image/radio_done.png", color: Color(0xffE6332A),)
                                    : Image.asset("assets/image/radio_off.png", color: Color(0xffE6332A),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          _orderController.sorted.value="Заказ выдан";
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
                ...profileController.dataOrders.rows!.map((order) => getRowOrders(order)),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget getRowOrders(RowsOrders order){
    return Container(
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
              order.notifications!.length!=0?Container(
                margin: EdgeInsets.only(
                    right: 26
                ),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE6332A)
                ),
                child: Center(
                  child: Text(
                    "${order.notifications!.length}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
              ): Container(
                margin: EdgeInsets.only(
                    right: 26
                ),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffD6D6D6)
                ),
              ),
              Text(
                "${order.idOrder}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff2e2e33),
                    fontFamily: "Roboto"
                ),
              )
            ],
          ),
          Text(
            order.status=="PAID"?"Сделка завершена":"",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff717171),
                fontFamily: "Roboto"
            ),
          )
        ],
      ),
    );
  }

}