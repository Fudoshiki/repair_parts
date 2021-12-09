import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/components_main/text_field_component.dart';

class NORegistredOrgScreen259_59a extends StatelessWidget{

  bool? bottom;
  bool open2 =false;
  bool open3=false;
  bool open4=false;
  String str1="";
  String str2="";
  String str3="";
  String str4="";

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
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "ИНН","1234567890"
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 50,
                        width: Get.width-40,
                        child: TextFieldCustom(
                            "Наименование","ООО Запчасти"
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "ОГРН","1234567890"
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "КПП","1234567890"
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
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Страна","1234567890"
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Населенный пункт","Иркутская область, Ангарский район,  qwhehqw bjhqwb ehqbw jb wгород Ангарск",maxLines:2
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Улица","Ленина"
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Дом/строение","13"
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 50,
                          width: Get.width-40,
                          child: TextFieldCustom(
                              "Квартира/офис","3"
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
                              "Улица","Олега Кошевого"
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
                              "Наименование магазина/производства",""
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
                            controller: new TextEditingController()..text="",
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
                            controller: new TextEditingController()..text="",
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
                            controller: new TextEditingController()..text="",
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
                                  "Устав",
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
                                  "ОГРН",
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

                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 38,
                    bottom: 0
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
                              width: 13,
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
                              width: 13,
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
                                      text: ' правила заключения договора поставки',
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
                              child:open4? Container(
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
                                open4=!open4;
                                Get.forceAppUpdate();
                              },
                            ),
                            SizedBox(
                              width: 13,
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
                        bottom: 38
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
                                    color: Color(0xffFFE9E8),
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Image.asset("assets/image/done.png",color: Color(0xffE6332A),),
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
                                          color:Color(0xffD6D6D6),
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
                        color:open2&&open3&&open4? Color(0xffE6332A):Color(0xff959595),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Отправить запрос",
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
                  },
                )

              ],
            ),
          )
        ],
      ),
    );
  }

}