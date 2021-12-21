import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class InformationPaymentScreen extends StatelessWidget{
  bool? bottom;
  InformationPaymentScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              bottom: 20
            ),
            child: Text(
              "Оплата",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Color(0xff2e2e33),
                  fontFamily: "Roboto"
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              children: [
                Text(
                  "Безналичный расчет для юридических лиц",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                    height: 2
                  ),
                ),
                Text(
                  "Оплатите заказ с расчетного счета организации, указав способ оплаты юридическое лицо/оплата по счету и заполнив нужные поля (для индивидуального предпринимателя — с расчётного счёта, открытого именно на имя индивидуального предпринимателя, а не с личного счёта физического лица).",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),

                Text(
                  "Корпоративной картой Юридического лица",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  'При оплате заказа банковской картой выберите способ оплаты "По номеру карты" или “QR коду”. Нажмите "оплатить". Далее следуйте инструкциям на сайте платежной системы. Использовать для оплаты разрешается только корпоративную банковскую карту юр. лица. Все действия с персональными данными осуществляются при помощи защищенного канала на сервере платежной системы.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Картой физического лица",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  'При оплате заказа банковской картой выберите способ оплаты "По номеру карты" или “QR коду”. Нажмите "оплатить". Далее следуйте инструкциям на сайте платежной системы. Использовать для оплаты разрешается только Вашу личную банковскую карту. Все действия с персональными данными осуществляются при помощи защищенного канала на сервере платежной системы.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),

              ],
            ),
          )

        ],
      ),
    );
  }


}
