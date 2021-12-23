import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/models/rows_refund_exchange.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';

class HistoryResetObmenOrders extends StatelessWidget{
  bool? bottom;
  HistoryResetObmenOrders({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  ProfileController profileController =Get.find();
  var sorted ="Июль 2021".obs;
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
        ),):Container(
        height: 1,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 40
                ),
                child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
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
              "Возврат/обмен",
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

            ),

          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                ...profileController.dataRefundExchange.rows!.map((e) => getRowRefundExchange(e)),


              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget getRowRefundExchange(RowsRefundExchange e){
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
              e.notifications!.length!=0? Container(
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
                    "${e.notifications!.length}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.white,
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
              ):Container(
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
                "${e.idOrder}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff2e2e33),
                    fontFamily: "Roboto"
                ),
              ),
            ],
          ),
          Container(
              height: 9,
              width: 14,
              child:Image.asset("assets/image/reset.png",color:Color(0xffE6332A))
          ),
          Text(
            e.status=="PAID"?"Заказ оплачен":"Ждет ответ",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff2e2e33),
                fontFamily: "Roboto"
            ),
          ),
          Text(
            "${
                DateTime.parse("${e.createdAt}").day>10
                    ?DateTime.parse("${e.createdAt}").day
                    :"0${DateTime.parse("${e.createdAt}").day}"
            }."
                "${
                DateTime.parse("${e.createdAt}").month>10
                    ?DateTime.parse("${e.createdAt}").month
                    :"0${DateTime.parse("${e.createdAt}").month}"
            }"
                ".${DateTime.parse("${e.createdAt}").year}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff2e2e33),
                fontFamily: "Roboto"
            ),
          )
        ],
      ),
    );
  }
}