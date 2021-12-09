import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/components_main/text_field_component.dart';

import 'choose_category_seller.dart';
import 'done_submit.dart';

class NORegistredOrgScreenSeller extends StatelessWidget{

  bool open2 =false;
  bool open3=false;
  bool open4=false;
  String str1="";
  String str2="";
  String str3="";
  String str4="";
  bool? bottom;
  NORegistredOrgScreenSeller({@required this.bottom});
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
                  top: 20
              ),
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child:  Container(
                      child: Icon(Icons.arrow_back),
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
                  right: 20,
                  top: 17
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Регистрация",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Пожалуйста, заполните все необходимые поля",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ],
              )
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                //1s
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 35
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Личные данные продавца",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Фамилия",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Имя",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Отчество",""
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
                      top: 35
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
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Серия",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Номер",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Кем выдан",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Дата выдачи",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Код подразделения",""
                          )
                      ),
                    ],
                  ),
                ),
                //3
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 35
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
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "ИНН",""
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
                      top: 35
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
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "СНИЛС",""
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
                      top: 35
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
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Страна","Россия"
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          width: Get.width-40,
                          child: TextFieldCustom(
                            "Населенный пункт","",maxLines: 3,
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Улица",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Дом/строение",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Квартира/офис",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Почтовый индекс",""
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
                      top: 35
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
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Наименование банка",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "ИНН",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "БИК",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "К/с",""
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Р/с",""
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
                      top: 35
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
                                  color: Color(0xffC4C4C4),
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
                              hintText: "Телефон организации",
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
                                  color: Color(0xffC4C4C4),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
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
                            fontWeight: FontWeight.w500,
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
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
                                )
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        onTap: (){
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
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
                                )
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        onTap: (){
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
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
                                )
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        onTap: (){
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
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
                                )
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        onTap: (){
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
                    bottom: 35
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Пожалуйста, внимательно знакомьтесь со следующими документами",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
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
                              child:open2? Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color(0xffE6332A),
                                        width: 1
                                    ),
                                    color: Color(0xffE6332A)
                                ),
                                padding: EdgeInsets.all(4),
                                child: Image.asset("assets/image/done.png",color: Colors.white,),
                              )
                                  :Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
                                ),
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
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' условия политики обработки персональных данных',
                                      style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
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
                              child:open3? Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color(0xffE6332A),
                                        width: 1
                                    ),
                                    color: Color(0xffE6332A)
                                ),
                                padding: EdgeInsets.all(4),
                                child: Image.asset("assets/image/done.png",color: Colors.white,),
                              )
                                  :Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
                                ),
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
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' условия оферты для Продавцов',
                                      style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
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


                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 10
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Выбрать категории",
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
                    Get.to(ChooseCategorySeller(bottom: true,));
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20
                    ),
                    decoration: BoxDecoration(
                        color:open2&&open3? Color(0xffE6332A):Color(0xff959595),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Отправить запрос ",
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
                    Get.to(DoneSubmit(bottom: true,));
                  },
                ),

                //ChooseRegionSeller


              ],
            ),
          )
        ],
      ),
    );
  }

}