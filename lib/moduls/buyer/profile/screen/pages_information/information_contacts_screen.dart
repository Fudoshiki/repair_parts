import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class InformationContactsScreen extends StatelessWidget{
  bool? bottom;
  InformationContactsScreen({@required this.bottom});
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
              bottom: 24
            ),
            child: Text(
              "Контакты",
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
                  'ООО «ИНФИНИТУМ» \n'
                      'Телефон: 8 (3952) 717-700\n'
                      'E-mail: info@inf.market\n'
                      'Юридический адрес: 665800, Иркутская область, г. Ангарск, нп. Второй промышленный массив, квл. 41, стр. 15, оф. 57\n'
                      'Почтовый адрес: 664017, г. Иркутск, а/я 53\n'
                      'ИНН: 3801147025\n'
                      'КПП: 380101001\n'
                      'ОГРН: 1183850035973\n',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    color: Color(0xff2e2e33),
                    height: 2,

                  ),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
  


}
