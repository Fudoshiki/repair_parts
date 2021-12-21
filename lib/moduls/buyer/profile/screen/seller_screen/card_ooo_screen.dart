import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class CardOOOScreen extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  CardOOOScreen({@required this.bottom});
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30
            ),
            height: 40,
            child: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: (){
                Get.back();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16
            ),
            height: 40,
            child: Text(
              "Карточка предприятия",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Color(0xff2e2e33)
              ),
            )
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20
              ),
              children: [
                getBoldText("ООО Запчасти"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    getBoldText("ИНН "),
                    getText("1234567890")
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    getBoldText("ОГРН "),
                    getText("33234567890 ")
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    getBoldText("КПП "),
                    getText("33234567890 ")
                  ],
                ),
                SizedBox(height: 10,),
                getBoldText("Юридический адрес"),
                getText("Иркутская область, Ангарский район, Ангарск, уЛИЦА лЕНИНА, д 32"),
                SizedBox(height: 20,),
                getBoldText("ФИО директора"),
                getText("Петров Петр Петрович"),
                SizedBox(height: 10,),
                getBoldText("Банковские реквизиты"),
                getText("Сбербанк"),
                getText("ИНН 44334343"),
                getText("БИК 434343443546"),
                getText("К/с 4342379098076897"),
                getText("Р/с 877566777778999"),
                getText("Петров Петр Петрович"),
                SizedBox(height: 10,),
                getBoldText("Контакты"),
                getText("8 988 888 88 88"),
                getText("dfsdhg@mail.ru"),
                SizedBox(height: 10,),
                getBoldText("Компания работает"),
                getText("с НДС"),
              ],
            ),
          )

        ],
      ),
    );
  }


}
Widget getBoldText(text){
  return Text(
    "$text",
    style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xff2e2e33)
    ),
  );
}
Widget getText(text){
  return Text(
    "$text",
    style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff2e2e33)
    ),
  );
}