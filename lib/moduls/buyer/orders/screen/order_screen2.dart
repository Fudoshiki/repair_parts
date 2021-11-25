import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/buyer/home/controller/home_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/orders/controller/order_controller.dart';

class OrderScreen2 extends StatelessWidget{
  OrderController _orderController = Get.put(OrderController());
  MainController _mainController =Get.find();
  bool? bottom;
  OrderScreen2({@required this.bottom});
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
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "У вас пока нет заказов",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,

                          ),
                          SizedBox(height: 16,),
                          Text(
                            "Здесь появится информация о вашихзаказах",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                )
            )
          ],
        )
    );
  }

}