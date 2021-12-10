import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/components_main/text_field_component.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/main_data_profile/company_ip_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/main_data_profile/company_oop_screen.dart';

import 'card_ip_seller_screen.dart';
import 'create_organization_screen.dart';


class MainDataProfileSeller extends StatefulWidget {
  bool? bottom;

  MainDataProfileSeller({@required this.bottom});

  @override
  State<StatefulWidget> createState() {
    return MainDataProfileState();
  }
}
class MainDataProfileState extends State<MainDataProfileSeller>{
  int index =0;
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  bool open7 =false;
  bool open8 =false;
  bool open9 =false;
  bool open10 =false;
  bool open11 =false;
  bool open12=false;
  bool open13 =false;
  bool open14 =false;
  bool open15 =false;

  var controller =new PageController();
  var focusNode1=new FocusNode();
  var focusNode2=new FocusNode();
  var focusNode3=new FocusNode();
  var focusNode4=new FocusNode();
  var focusNode5=new FocusNode();

  var str1="passport.pdf";
  var str2="passport.gl.pdf";
  var str3="moy-inn.pdf";
  var str4="snils.doc";
  var str5="";

  bool open2=false;
  bool open3=false;
  bool open4=false;
  bool open5=false;
  bool open6=false;

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
                          height: 3.2,
                        ),
                        Text(
                          "Продавец",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              color: Color(0xff2e2e33)
                          ),
                        ),

                        Container(

                          child: Row(
                            children: [
                              Text(
                                "3,2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                height: 11,
                                width: 11,
                                child: Image.asset(
                                  "assets/image/Star 1.png",
                                  color: Color(0xffFFB800),
                                ),
                              ),
                              Container(
                                height: 11,
                                width: 11,
                                child: Image.asset(
                                  "assets/image/Star 1.png",
                                  color: Color(0xffFFB800),
                                ),
                              ),
                              Container(
                                height: 11,
                                width: 11,
                                child: Image.asset(
                                  "assets/image/Star 1.png",
                                  color: Color(0xffFFB800),
                                ),
                              ),
                              Container(
                                height: 11,
                                width: 11,
                                child: Image.asset(
                                  "assets/image/Star 1.png",
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              Container(
                                height: 11,
                                width: 11,
                                child: Image.asset(
                                  "assets/image/Star 1.png",
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ],
                          ),
                        )

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
                width: Get.width,
                height: 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
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
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          "Отзывы",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              color:index==2? Color(0xff2e2e33):Color(0xff959595)
                          ),
                        ),
                      ),
                      onTap: (){
                        index=2;
                        controller.jumpToPage(2);
                        Get.forceAppUpdate();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          "Транспортные компании",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              color:index==3? Color(0xff2e2e33):Color(0xff959595)
                          ),
                        ),
                      ),
                      onTap: (){
                        index=3;
                        controller.jumpToPage(3);
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
                      padding: EdgeInsets.only(
                          top:0
                      ),
                      children: [
                        //1s
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ФИО",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(height: 7,),
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 48,
                                  width: Get.width-40,
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: open5?Color(0xffE6332A):Color(0xffC4C4C4),
                                          width: 1
                                      )
                                  ),
                                  child: TextField(
                                    onTap: (){
                                    },
                                    controller: new TextEditingController()..text="Иванов",
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
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 48,
                                  width: Get.width-40,
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: open5?Color(0xffE6332A):Color(0xffC4C4C4),
                                          width: 1
                                      )
                                  ),
                                  child: TextField(
                                    onTap: (){
                                    },
                                    controller: new TextEditingController()..text="Иван",

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
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 48,
                                  width: Get.width-40,
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: open5?Color(0xffE6332A):Color(0xffC4C4C4),
                                          width: 1
                                      )
                                  ),
                                  child: TextField(
                                    onTap: (){
                                    },
                                    controller: new TextEditingController()..text="Иванович",

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

                            ],
                          ),
                        ),
                        //2
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 38
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Паспортные данные",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Серия","2515",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Номер","123 456",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Кем выдан","УВД",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Дата выдачи","23.12.21",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Код подразделения","346-568",values: open5,
                                  )
                              ),

                            ]
                          ),
                        ),
                        //3
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 38
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ИНН продавца",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "ИНН","",values: open5,
                                  )
                              ),
                            ],
                          ),
                        ),
                        //4
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 11
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "СНИЛС",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "СНИЛС","",values: open5,
                                  )
                              ),
                            ],
                          ),
                        ),
                        //5
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 24
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Адрес прописки",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Страна","Россия",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Населенный пункт","Иркутская область, Усольский район, город Усолье-Сибирское",maxLines:3,values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Улица","Анны Кошеловой",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Дом/строение","2",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Квартира/офис","",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Индекс","445666",values: open5,
                                  )
                              ),

                            ],
                          ),
                        ),
                        //6
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 38
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Банковские реквизиты",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Наименование банка","Сбер",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "ИНН","2323233545",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "БИК","2323233545",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "К/с","2323233545",values: open5,
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 8),
                                  height: 50,
                                  width: Get.width-40,
                                  child: TextFieldCustom(
                                      "Р/с","2323233545",values: open5,
                                  )
                              ),


                            ],
                          ),
                        ),
                        //7
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 38
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Контактные данные",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(height: 7,),
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 48,
                                  width: Get.width-40,
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: open5?Color(0xffE6332A):Color(0xffC4C4C4),
                                          width: 1
                                      )
                                  ),
                                  child: TextField(
                                    onTap: (){
                                    },

                                    controller: new TextEditingController()..text="8 978 877 66 67",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
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
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 48,
                                  width: Get.width-40,
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: open5?Color(0xffE6332A):Color(0xffC4C4C4),
                                          width: 1
                                      )
                                  ),
                                  child: TextField(
                                    onTap: (){
                                    },
                                    controller: new TextEditingController()..text="dsdsdsds@mail.ru",
                                    decoration: InputDecoration(
                                      hintText: "E-mail продавца",
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

                            ],
                          ),
                        ),


                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 40
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Прикрепите документы",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),

                              SizedBox(height: 13,),
                              GestureDetector(
                                child: str1!=""?DottedBorder(
                                  color: Color(0xffE6332A),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "passport.pdf",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                        open5?Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 21,
                                          height: 21,
                                          padding: EdgeInsets.only(
                                              left: 1,
                                              bottom: 1
                                          ),
                                          child: Image.asset("assets/image/canseled.png"),
                                        ):Container()
                                      ],
                                    ),
                                  ),
                                )
                                    :DottedBorder(
                                  color: Color(0xffD6D6D6),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 16,
                                          height: 16,

                                          child: Image.asset("assets/image/adede.png"),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "Паспорт (главная)",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                onTap: open5?(){
                                  str1="";
                                  Get.forceAppUpdate();
                                }:(){
                                   showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      double width = MediaQuery.of(context).size.width;
                                      double height = MediaQuery.of(context).size.height;
                                      return AlertDialog(

                                          backgroundColor: Colors.transparent,
                                          contentPadding: EdgeInsets.all(0),
                                          elevation: 0.0,
                                          // title: Center(child: Text("Evaluation our APP")),
                                          content: Container(
                                            width: Get.width,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: Get.width,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Сделать фото",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str1=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),
                                                      Container(
                                                        width: Get.width,
                                                        height: 1,
                                                        color: Color(0xffCBCBCB),
                                                      ),
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Выбрать из галереи",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str1=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Отмена",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          Get.back();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          )
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 10,),
                              GestureDetector(
                                child: str2!=""?DottedBorder(
                                  color: Color(0xffE6332A),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "passport.pdf",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                        open5?Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 21,
                                          height: 21,
                                          padding: EdgeInsets.only(
                                              left: 1,
                                              bottom: 1
                                          ),
                                          child: Image.asset("assets/image/canseled.png"),
                                        ):Container()
                                      ],
                                    ),
                                  ),
                                )
                                    :DottedBorder(
                                  color: Color(0xffD6D6D6),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 16,
                                          height: 16,

                                          child: Image.asset("assets/image/adede.png"),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "Паспорт (прописка)",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                onTap: open5?(){
                                  str2="";
                                  Get.forceAppUpdate();
                                }:(){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      double width = MediaQuery.of(context).size.width;
                                      double height = MediaQuery.of(context).size.height;
                                      return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          contentPadding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          // title: Center(child: Text("Evaluation our APP")),
                                          content: Container(
                                            width: Get.width-26,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Сделать фото",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str2=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),
                                                      Container(
                                                        width: Get.width,
                                                        height: 1,
                                                        color: Color(0xffCBCBCB),
                                                      ),
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Выбрать из галереи",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str2=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Отмена",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          Get.back();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          )
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 10,),
                              GestureDetector(
                                child:str3!=""?DottedBorder(
                                  color: Color(0xffE6332A),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "passport.pdf",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                        open5?Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 21,
                                          height: 21,
                                          padding: EdgeInsets.only(
                                              left: 1,
                                              bottom: 1
                                          ),
                                          child: Image.asset("assets/image/canseled.png"),
                                        ):Container()
                                      ],
                                    ),
                                  ),
                                )
                                    : DottedBorder(
                                  color: Color(0xffD6D6D6),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 16,
                                          height: 16,

                                          child: Image.asset("assets/image/adede.png"),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "ИНН",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                onTap: open5?(){
                                  str3="";
                                  Get.forceAppUpdate();
                                }:(){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      double width = MediaQuery.of(context).size.width;
                                      double height = MediaQuery.of(context).size.height;
                                      return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          contentPadding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          // title: Center(child: Text("Evaluation our APP")),
                                          content: Container(
                                            width: Get.width-26,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Сделать фото",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str3=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),
                                                      Container(
                                                        width: Get.width,
                                                        height: 1,
                                                        color: Color(0xffCBCBCB),
                                                      ),
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Выбрать из галереи",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str3=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Отмена",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          Get.back();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          )
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 10,),
                              GestureDetector(
                                child: str4!=""?DottedBorder(
                                  color: Color(0xffE6332A),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "passport.pdf",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),
                                        open5?Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 21,
                                          height: 21,
                                          padding: EdgeInsets.only(
                                              left: 1,
                                              bottom: 1
                                          ),
                                          child: Image.asset("assets/image/canseled.png"),
                                        ):Container()
                                      ],
                                    ),
                                  ),
                                )
                                    :DottedBorder(
                                  color: Color(0xffD6D6D6),
                                  radius: Radius.circular(20),
                                  child: Container(

                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                        bottom: 15,
                                        right: 9
                                    ),
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                          ),
                                          width: 16,
                                          height: 16,

                                          child: Image.asset("assets/image/adede.png"),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "СНИЛС",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                onTap: open5?(){
                                  str4="";
                                  Get.forceAppUpdate();
                                }:(){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      double width = MediaQuery.of(context).size.width;
                                      double height = MediaQuery.of(context).size.height;
                                      return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          contentPadding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          // title: Center(child: Text("Evaluation our APP")),
                                          content: Container(
                                            width: Get.width-26,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Сделать фото",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str4=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),
                                                      Container(
                                                        width: Get.width,
                                                        height: 1,
                                                        color: Color(0xffCBCBCB),
                                                      ),
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Выбрать из галереи",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: ()async{
                                                          final ImagePicker _picker = ImagePicker();
                                                          final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                          if(
                                                          pickedFile!=null
                                                          ){
                                                            str4=pickedFile.name;
                                                            Get.forceAppUpdate();
                                                          }
                                                          Get.back();
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: Get.width-26,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      const BorderRadius.all(Radius.circular(10.0))),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        child: Container(
                                                          height: 50,
                                                          child: Center(
                                                            child: Text(
                                                              "Отмена",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontFamily: "Roboto",
                                                                  color: Color(0xff2E2E33)
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          Get.back();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          )
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 38,
                              bottom: 25
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Пожалуйста, внимательно знакомьтесь со следующими документами",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 20
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            color: Color(0xffD6D6D6)
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                      ),
                                      onTap: (){
                                        open2=!open2;
                                        Get.forceAppUpdate();
                                      },
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Принимаю ',
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' условия политики обработки персональных данных',
                                              style: TextStyle(
                                                color: Color(0xffE6332A),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Roboto",
                                                decoration: TextDecoration.underline,

                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // launch(policyUrl);
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 13
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            color: Color(0xffD6D6D6)
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                      ),
                                      onTap: (){
                                        open3=!open3;
                                        Get.forceAppUpdate();
                                      },
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Принимаю ',
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' условия оферты для Продавцов',
                                              style: TextStyle(
                                                color: Color(0xffE6332A),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Roboto",
                                                decoration: TextDecoration.underline,

                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // launch(policyUrl);
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left:20,
                              right:20
                          ),
                            child:Text(
                                "Количество сделок: 420",
                                style:TextStyle(
                                    color:Color(0xff525252),
                                    fontSize:13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                )
                            )
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                left:20,
                                right:20,
                              top:12,
                                bottom: 38
                            ),
                            child:Text(
                                "Количество возвратов: 420",
                                style:TextStyle(
                                    color:Color(0xff525252),
                                    fontSize:13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                )
                            )
                        ),


                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                bottom: 21
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffE6332A),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                open5?"Отправить на проверку":"Редактировать",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            open5=!open5;
                            Get.forceAppUpdate();
                            // Get.to(ChooseCategorySeller());
                          },
                        ),
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              children:[
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
                                    Get.to(CardIPSellerScreen());
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
                                    Get.to(CardIPSellerScreen());
                                  },
                                ),

                              ]
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 21
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffE6332A),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              height: 50,
                              child: Center(
                                child: Text(
                                  "Добавить организацию",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Get.to(CreateOrganizationScreen());
                              // Get.to(ChooseCategorySeller());
                            },
                          ),


                        ]
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            height: 1,
                            width: Get.width-40,
                            color: Color(0xffE7E7E7),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            padding: EdgeInsets.only(
                                bottom: 12,left: 10
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffE7E7E7),
                                        width: 1
                                    )
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 31,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Сергей",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Row(
                                        children: [

                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          SizedBox(width: 12,),
                                          Text(
                                            "20.02.2021",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                                color: Color(0xff717171),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:Get.width-100,
                                  child: Text(
                                    "Ужасное качество доставки! Привезли разбитые детали!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            padding: EdgeInsets.only(
                                bottom: 12,left: 10
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffE7E7E7),
                                        width: 1
                                    )
                                )
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Container(
                                  height: 31,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Иван",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Row(
                                        children: [

                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          SizedBox(width: 12,),
                                          Text(
                                            "20.02.2021",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                                color: Color(0xff717171),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    width:Get.width-100,

                                  child: Text(
                                    "Ужасное качество доставки! Привезли разбитые детали!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20,
                                right: 20
                            ),
                            padding: EdgeInsets.only(
                                bottom: 12,left: 10
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffE7E7E7),
                                        width: 1
                                    )
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Container(
                                  height: 31,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Максим",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Row(
                                        children: [

                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffFFB800),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Container(
                                            height: 11,
                                            width: 11,
                                            child: Image.asset(
                                              "assets/image/Star 1.png",
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          SizedBox(width: 12,),
                                          Text(
                                            "20.02.2021",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                                color: Color(0xff717171),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:Get.width-100,

                                  child: Text(
                                    "Ужасное качество доставки! Привезли разбитые детали!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListView(
                                padding:EdgeInsets.only(top:0),
                                children:[
                                  open6?Column(
                                      children:[
                                      
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open8? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open8=!open8;


                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "Деловые линии",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open9? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open9=!open9;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "Энергия",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open10? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open10=!open10;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "Байкал-Сервис",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open11? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open11=!open11;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "GTD",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open12? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open12=!open12;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "Почта России",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open13? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open13=!open13;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "CDEK",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child:open14? Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffFFE9E8),
                                                        width: 1
                                                    ),
                                                    color: Color(0xffFFE9E8)
                                                ),
                                                padding: EdgeInsets.all(7),
                                                child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
                                              )
                                                  :Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    border: Border.all(
                                                        color: Color(0xffD6D6D6),
                                                        width: 1
                                                    )
                                                ),
                                              ),
                                              onTap: (){
                                                open14=!open14;

                                                Get.forceAppUpdate();
                                              },
                                            ),
                                            SizedBox(width: 22,),

                                            Text(
                                              "ПЭК",
                                              style: TextStyle(
                                                  color: Color(0xff2e2e33),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ]
                                  )
                                      :Column(
                                      children:[
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 20
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF3F3F3),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                padding: EdgeInsets.all(10),
                                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                              ),
                                              SizedBox(width: 22,),
                                              Text(
                                                "Деловые линии",
                                                style: TextStyle(
                                                    color: Color(0xff2E2E33),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 20
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF3F3F3),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                padding: EdgeInsets.all(10),
                                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                              ),
                                              SizedBox(width: 22,),
                                              Text(
                                                "Энергия",
                                                style: TextStyle(
                                                    color: Color(0xff2E2E33),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 20
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF3F3F3),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                padding: EdgeInsets.all(10),
                                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                              ),
                                              SizedBox(width: 22,),
                                              Text(
                                                "Почта России",
                                                style: TextStyle(
                                                    color: Color(0xff2E2E33),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 20
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF3F3F3),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                padding: EdgeInsets.all(10),
                                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                                              ),
                                              SizedBox(width: 22,),
                                              Text(
                                                "ПЭК",
                                                style: TextStyle(
                                                    color: Color(0xff2E2E33),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                  )
                                ]
                            ),
                          ),
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
                              child: Center(
                                child: Text(
                                  open6?"Сохранить":"Редактировать",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              open6=!open6;
                              Get.forceAppUpdate();
                              // Get.to(ChooseCategorySeller());
                            },
                          ),

                        ],
                      ),
                    ),
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