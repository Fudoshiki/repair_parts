import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/seller_screen/card_ooo_screen.dart';


class CardIPSellerScreen extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  CardIPSellerScreen({@required this.bottom});
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
                getBoldText("ИП Петров Петр Петрович"),
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
                getBoldText("Юридический адрес"),
                getText("Иркутская область, Ангарский район, Ангарск, уЛИЦА лЕНИНА, д 32"),

                SizedBox(height: 20,),
                getBoldText("Банковские реквизиты"),
                getText("Сбербанк"),
                getText("ИНН 44334343"),
                getText("БИК 434343443546"),
                getText("К/с 4342379098076897"),
                getText("Р/с 877566777778999"),
                SizedBox(height: 10,),
                getBoldText("Контакты"),
                getText("8 988 888 88 88"),
                getText("dfsdhg@mail.ru"),
                SizedBox(height: 10,),
                getBoldText("Компания работает"),
                getText("с НДС"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: 21
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 30,
                    width: (Get.width-50)/2,
                    child: Center(
                      child: Text(
                        "Редактировать",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    // Get.to(()=>ChooseCategorySeller());
                  },
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: 21
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff959595),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 30,
                    width: (Get.width-50)/2,
                    child: Center(
                      child: Text(
                        "Удалить",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    Get.dialog(
                      Container(
                        height: 144,
                        margin: EdgeInsets.only(left: 20,
                        top: (Get.height-144)/2,
                        bottom: (Get.height-144)/2,
                          right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Scaffold(
                          body: Center(
                            child: Container(
                              width: Get.width-40,
                              height: 144,
                              child: Column(
                                children: [
                                  SizedBox(height: 26,),
                                  Text(
                                    "Удалить организацию?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(height: 16,),

                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                             left: 10
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffBABABA),
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          height: 30,
                                          width: (Get.width-70)/2,
                                          child: Center(
                                            child: Text(
                                              "Да",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){Get.back(); // Get.to(()=>ChooseCategorySeller());
                                        },
                                      ),
                                      SizedBox(width: 10,),
                                      GestureDetector(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: 10
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffE6332A),
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          height: 30,
                                          width: (Get.width-70)/2,
                                          child: Center(
                                            child: Text(
                                              "Нет",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){Get.back(); // Get.to(()=>ChooseCategorySeller());

                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    );
                  },
                ),

              ],
            ),
          )

        ],
      ),
    );
  }

}