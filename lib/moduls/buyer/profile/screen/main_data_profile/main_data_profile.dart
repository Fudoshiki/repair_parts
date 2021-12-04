import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'company_ip_screen.dart';
import 'company_oop_screen.dart';

class MainDataProfile extends StatefulWidget {
  bool? bottom;

  MainDataProfile({@required this.bottom});

  @override
  State<StatefulWidget> createState() {
   return MainDataProfileState();
  }
}
class MainDataProfileState extends State<MainDataProfile>{
  int index =0;
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  var controller =new PageController();
  var focusNode1=new FocusNode();
  var focusNode2=new FocusNode();
  var focusNode3=new FocusNode();
  var focusNode4=new FocusNode();
  var focusNode5=new FocusNode();
  @override
  void initState() {
    focusNode1.addListener(() {
      setState(() {

      });
    });
    focusNode2.addListener(() {
      setState(() {

      });
    });
    focusNode3.addListener(() {
      setState(() {

      });
    });
    focusNode4.addListener(() {
      setState(() {

      });
    });
    focusNode5.addListener(() {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: Column(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),
                    Text(
                      "Основные данные",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          color: Color(0xff2e2e33)
                      ),
                    ),
                    Opacity(
                      child: GestureDetector(
                        child:  Container(
                          width: 19,
                          height: 16,
                          child: Image.asset("assets/image/arrow_left.png"),
                        ),
                        onTap: (){
                          Get.back();
                        },
                      ),
                      opacity: 0,
                    )

                  ],
                )
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffFFB800)
                    ),
                    child: Image.asset("assets/image/profile.png"),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Иван",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            color: Color(0xff2e2e33)
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 7 (000) 000-00-00",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color: Color(0xff2e2e33)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top:19,
                  left: 20,
                  right: 20,
                  bottom: 14
              ),
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "Личные данные",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color:index==0? Color(0xff2e2e33):Color(0xff959595)
                        ),
                      ),
                    ),
                    onTap: (){
                      index=0;
                      controller.jumpToPage(0);
                      Get.forceAppUpdate();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "Организации",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color:index==1? Color(0xff2e2e33):Color(0xff959595)
                        ),
                      ),
                    ),
                    onTap: (){
                      index=1;
                      controller.jumpToPage(1);
                      Get.forceAppUpdate();
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                children: [
                  ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffC4C4C4),
                                    width: 1
                                )
                            ),
                            height: 48,
                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                      width: Get.width-81,
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                      ),
                                      height: 48,
                                      child: TextField(
                                        focusNode: focusNode1,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"

                                        ),
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText: "Фамилия",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      )
                                  ),
                                  focusNode1.hasFocus
                                      ||focusNode2.hasFocus
                                      ||focusNode3.hasFocus
                                      ||focusNode4.hasFocus
                                      ||focusNode5.hasFocus?Container():
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                              left: BorderSide(
                                                  color: Color(0xffC4C4C4),
                                                  width: 1
                                              )
                                          )
                                      ),margin: EdgeInsets.only(right: 3),
                                      width: 36,
                                      height: 48,
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 7
                                      ),
                                      child: Center(
                                        child: Image.asset("assets/image/pencile.png"),
                                      ),
                                    ),
                                    onTap: (){
                                      FocusScope.of(context).requestFocus(focusNode1);
                                    },
                                  )
//
                                ],
                              ),
                              onTap: (){
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffC4C4C4),
                                    width: 1
                                )
                            ),
                            height: 48,

                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                      width: Get.width-81,
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                      ),
                                      height: 48,
                                      child: TextField(
                                        focusNode: focusNode2,

                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"

                                        ),
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText: "Имя",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      )
                                  ),
                                  focusNode1.hasFocus
                                      ||focusNode2.hasFocus
                                      ||focusNode3.hasFocus
                                      ||focusNode4.hasFocus
                                      ||focusNode5.hasFocus?Container():
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                              left: BorderSide(
                                                  color: Color(0xffC4C4C4),
                                                  width: 1
                                              )
                                          )
                                      ),margin: EdgeInsets.only(right: 3),
                                      width: 36,
                                      height: 48,
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 7
                                      ),
                                      child: Center(
                                        child: Image.asset("assets/image/pencile.png"),
                                      ),
                                    ),
                                    onTap: (){
                                      FocusScope.of(context).requestFocus(focusNode2);
                                    },
                                  )

                                ],
                              ),
                              onTap: (){
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffC4C4C4),
                                    width: 1
                                )
                            ),
                            height: 48,

                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                      width: Get.width-81,
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                      ),
                                      height: 48,
                                      child: TextField(
                                        focusNode: focusNode3,

                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"

                                        ),
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText: "Отчество",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      )
                                  ),
                                  focusNode1.hasFocus
                                      ||focusNode2.hasFocus
                                      ||focusNode3.hasFocus
                                      ||focusNode4.hasFocus
                                      ||focusNode5.hasFocus?Container():
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                              left: BorderSide(
                                                  color: Color(0xffC4C4C4),
                                                  width: 1
                                              )
                                          )
                                      ),margin: EdgeInsets.only(right: 3),
                                      width: 36,
                                      height: 48,
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 7
                                      ),
                                      child: Center(
                                        child: Image.asset("assets/image/pencile.png"),
                                      ),
                                    ),
                                    onTap: (){
                                      FocusScope.of(context).requestFocus(focusNode3);
                                    },
                                  )

                                ],
                              ),
                              onTap: (){
                              },
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 37
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffC4C4C4),
                                    width: 1
                                )
                            ),
                            height: 48,

                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                      width: Get.width-81,
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                      ),
                                      height: 48,
                                      child: TextField(
                                        focusNode: focusNode4,

                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"

                                        ),
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText: "+ 7 (900) 000-00-00",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      )
                                  ),
                                  focusNode1.hasFocus
                                      ||focusNode2.hasFocus
                                      ||focusNode3.hasFocus
                                      ||focusNode4.hasFocus
                                      ||focusNode5.hasFocus?Container():
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                              left: BorderSide(
                                                  color: Color(0xffC4C4C4),
                                                  width: 1
                                              )
                                          )
                                      ),margin: EdgeInsets.only(right: 3),
                                      width: 36,
                                      height: 48,
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 7
                                      ),
                                      child: Center(
                                        child: Image.asset("assets/image/pencile.png"),
                                      ),
                                    ),
                                    onTap: (){
                                      FocusScope.of(context).requestFocus(focusNode4);
                                    },
                                  )

                                ],
                              ),
                              onTap: (){
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10

                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffC4C4C4),
                                    width: 1
                                )
                            ),
                            height: 48,

                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                      width: Get.width-81,
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                      ),
                                      height: 48,
                                      child: TextField(
                                        focusNode: focusNode5,

                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"

                                        ),
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText: "E-mail",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff959595),
                                              fontFamily: "Roboto"

                                          ),
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      )
                                  ),
                                  focusNode1.hasFocus
                                      ||focusNode2.hasFocus
                                      ||focusNode3.hasFocus
                                      ||focusNode4.hasFocus
                                      ||focusNode5.hasFocus?Container():
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                              left: BorderSide(
                                                  color: Color(0xffC4C4C4),
                                                  width: 1
                                              )
                                          )
                                      ),margin: EdgeInsets.only(right: 3),
                                      width: 36,
                                      height: 48,
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 7
                                      ),
                                      child: Center(
                                        child: Image.asset("assets/image/pencile.png"),
                                      ),
                                    ),
                                    onTap: (){
                                      FocusScope.of(context).requestFocus(focusNode5);
                                    },
                                  )

                                ],
                              ),
                              onTap: (){
                              },
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                top: 27,
                                left: 20,
                                right: 20
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Запросов:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xff2e2e33)
                                      ),
                                    ),
                                    Text(
                                      "22",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                          color:Color(0xff2e2e33)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 12,
                                left: 20,
                                right: 20
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Покупок:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xff2e2e33)
                                      ),
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                          color:Color(0xff2e2e33)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 12,
                                left: 20,
                                right: 20
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Возвратов:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xff2e2e33)
                                      ),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                          color:Color(0xff2e2e33)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 12,
                                left: 20,
                                right: 20
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Полученных жалоб:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xff2e2e33)
                                      ),
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                          color:Color(0xff2e2e33)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 12,
                                left: 20,
                                right: 20,
                                bottom: 27
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Отправленных жалоб:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          color: Color(0xff2e2e33)
                                      ),
                                    ),
                                    Text(
                                      "111",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                          color:Color(0xff2e2e33)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color(0xffE7E7E7),
                                      width: 1
                                  ),
                                  bottom: BorderSide(
                                      color: Color(0xffE7E7E7),
                                      width: 1
                                  ),
                                )
                            ),
                            padding: EdgeInsets.only(
                                left: 10
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "ИП Кулачкова В.Р. ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Roboto",
                                      color: Color(0xff2e2e33)
                                  ),
                                ),
                              ],
                            )
                        ),
                        onTap: (){
                          Get.to(CompanyIPScreen());

                        },

                      ),
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffE7E7E7),
                                      width: 1
                                  ),
                                )
                            ),
                            padding: EdgeInsets.only(
                                left: 10
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "ООО «Ха» ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Roboto",
                                      color: Color(0xff2e2e33)
                                  ),
                                ),
                              ],
                            )
                        ),
                        onTap: (){
                          Get.to(CompanyOOPScreen());

                        },

                      ),



                    ],
                  )
                ],
              ),
            )
          ],
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());

        },
      )
    );
  }


}