import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'no_registred_org.dart';

class RegistredOrgScreen2Seller extends StatelessWidget{

  bool? bottom;
  bool open2 =false;
  bool open3=false;
  bool open4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
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
                        "Организация зарегистрирована.",
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
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Данные о компании",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="1234567890",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "ИНН",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="ООО Запчасти",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Наименование",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.1
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="1234567890",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "ОГРН",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="1234567890",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "КПП",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Юридический адрес",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Россия",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Страна",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Иркутская область, Ангарский район, город Ангарск",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            maxLines: 3,
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Ленина",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Улица",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="13",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Дом/строение",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="3",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Квартира/офис",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Фактический адрес",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Россия",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Страна",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Еврейская автономная область, Биробиджанский район, с. Красный Восток",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            maxLines: 3,
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Населенный пункт",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Олега Кошевого",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Улица",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="21",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Дом/строение",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Квартира/офис",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="АвтоМир",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Наименование магазина/производства",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Банковские реквизиты",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="Сбер",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Наименование банка",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="2323233545",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "ИНН",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="2323233545",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "БИК",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="2323233545",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "К/с",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="2323233545",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                              height: 100
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelText: "Р/с",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Контактные данные",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="89056756756",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="dfsdhg@mail.ru",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Процент комиссии",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                          margin: EdgeInsets.only(top: 8),
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
                            enabled: false,
                            controller: new TextEditingController()..text="10%",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.2
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
                      DottedBorder(
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
                                "ustav.pdf",
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
                      ),
                      SizedBox(height: 10,),
                      DottedBorder(
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
                                "inn.pdf",
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
                      ),
                      SizedBox(height: 10,),
                      DottedBorder(
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
                                "ogrnip.doc",
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
                      ),


                    ],
                  ),
                ),

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
                              child:Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
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
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'условия политики обработки персональных данных',
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
                            top: 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child:Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
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
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'правила заключения договора поставки',
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
                            top: 20,
                            bottom: 30
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child:Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
                                ),
                                padding: EdgeInsets.all(4),
                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                              ),
                              onTap: (){
                                open4=!open4;
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
                                      text: ' условия оферты для поставщиков',
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

                Container(
                  margin: EdgeInsets.only(
                    top: 38,
                    left: 20,
                    right: 20,
                    bottom: 33
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Компания работает",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(
                                    right: 14
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffE5E5E5),
                                ),
                                padding: EdgeInsets.all(12),
                                child: Image.asset("assets/image/done.png",color: Color(0xff959595),),
                              ),
                              Text(
                                'с НДС',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(
                                    right: 14
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color:Color(0xff959595),
                                    width: 1
                                  )
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              Text(
                                'с НДС',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  )
                ),

                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffE6332A),width: 1
                      ),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add,color:Color(0xffE6332A)),
                        Text(
                          "Добавить филиал",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    )
                  ),
                ),

                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Продолжить",
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
                    Get.to(NORegistredOrgScreen());
                  },
                )
              //  NORegistredOrgScreen
              ],
            ),
          )
        ],
      ),
    );
  }

}