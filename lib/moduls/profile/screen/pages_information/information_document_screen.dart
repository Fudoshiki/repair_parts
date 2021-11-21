import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';

class InformationDocumentScreen extends StatelessWidget{
  bool? bottom;
  InformationDocumentScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              bottom: 37
            ),
            child: Text(
              "Документы",
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
                getRow(
                    text: "Политика обработки персональных данных"
                ),
                getRow(
                    text: "Правила заключения договора поставки"
                ),
                getRow(
                    text: "Пользовательское соглашение для покупателей"
                ),
                getRow(
                    text: "Оферта для поставщиков"
                ),
                getRow(
                    text: "Оферта для продавцов"
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
  Widget getRow({text}){
    return Container(
      margin: EdgeInsets.only(
        bottom: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                      right: 20
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffE6332A),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  padding: EdgeInsets.all(11),
                  child: Image.asset("assets/image/file.png"),
                ),
                Container(
                  width: Get.width-130,
                  child: Text(
                    "$text",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff2E2E33),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      height: 1.3
                    ),
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 8,
            height: 14,
            child: Image.asset("assets/image/arrow_right.png"),
          )


        ],
      ),
    );
  }



}
