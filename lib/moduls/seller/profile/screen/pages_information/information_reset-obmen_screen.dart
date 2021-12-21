import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class InformationResetObmenScreen extends StatelessWidget{
  bool? bottom;
  InformationResetObmenScreen({@required this.bottom});
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
              "Возврат/обмен",
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
                top: 21
              ),
              children: [

                Text(
                  "Покупатель после оплаты заказа имеет право оформить возврат/обмен товара:",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  "   • до получения заказа;\n"
    "   • после получения заказа в течение 7 дней.\n",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2,

                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Оформить возврат/обмен товара возможно в заказе в разделах “Заказы” и “История заказов”:',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                Text(
                  '   • Покупатель выбирает необходимое действие: возврат или обмен. \n'
                 '   • В заказе для возврата/обмена товара необходимо нажать “оформить”.\n'
    '   • Указывает количество, которое хочет вернуть/обменять.\n'
    '   • Покупатель выбирает причину возврата/обмена из списка, или указываете “другое” и прописывает комментарий.\n'
    '   • Есть возможность прикрепить фото или файл для подтверждения дефекта.\n'
    '   • Нажимает “Отправить”.\n'
    '   • При согласовании или отклонении запроса Покупателю придет уведомление.\n'
    '   • Если Возврат согласован, возврат денежных средств будет осуществлен в течении 10 дней.\n'
    '   • Если Возврат/обмен не согласован, придет аргументированный отказ.\n',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
                  ),
                ),
                SizedBox(height: 10,),Text(
                    'С более подробными правилами возврата/обмена можно ознакомиться в разделе “Документы”',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xff2e2e33),
                      height: 2
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
