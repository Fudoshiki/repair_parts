import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class DoOzifrovkaScreen2 extends StatelessWidget{
  bool? bottom;

  var images=[];
  DoOzifrovkaScreen2({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
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
                  )
                ],
              )
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  top: 0
              ),
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      top: 15,
                      right: 20,
                      bottom: 36
                  ),
                  child: Text(
                    "Оцифровать",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Информация о товаре",
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
                                  color: Color(0xffD6D6D6),
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
                                fontFamily: "Roboto"

                            ),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              hintText: "Артикул",
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
                                  color: Color(0xffD6D6D6),
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
                                fontFamily: "Roboto"

                            ),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

                              ),
                              hintText: "Наименование",
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 21,
                      left: 20,
                      right: 20
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Вид",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Не выбрано",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"

                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6)
                                  ),
                                  color: Color(0xffF3F3F3)

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff959595),
                                ),
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Марка ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Не выбрано",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"

                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6)
                                  ),
                                  color: Color(0xffF3F3F3)

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff959595),
                                ),
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Модель",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Не выбрано",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"

                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6)
                                  ),
                                  color: Color(0xffF3F3F3)

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff959595),
                                ),
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Категория",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Не выбрано",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"

                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6)
                                  ),
                                  color: Color(0xffF3F3F3)

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff959595),
                                ),
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
                      top: 38,
                      left: 20,
                      right: 20
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Подкатегория",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 50,
                        width: Get.width-40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Не выбрано",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff959595),
                                    fontFamily: "Roboto"

                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6)
                                  ),
                                  color: Color(0xffF3F3F3)

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff959595),
                                ),
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
                      right: 20,
                      top: 27
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание товара",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"
                        ),
                      ),
                      //Enter Description
                      Container(
                        margin: EdgeInsets.only(
                            top: 8,
                            bottom: 35
                        ),
                        height: 100,
                        padding: EdgeInsets.only(
                            left:20,
                            right: 20),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffD6D6D6),
                                width: 1
                            ),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextField(
                          maxLines: 5,

                          decoration: InputDecoration(
                            hintText: "Добавьте текст",
                            hintStyle: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff959595)
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
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
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Характеристики",
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
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
                            enabled: false,
                            decoration: InputDecoration(
                              hintText: "Вес, кг",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
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
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
                            enabled: false,
                            decoration: InputDecoration(
                              hintText: "Длина, мм",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
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
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
                            enabled: false,
                            decoration: InputDecoration(
                              hintText: "Ширина, мм",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
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
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
                            enabled: false,
                            decoration: InputDecoration(
                              hintText: "Высота, мм",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
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
                    top: 25
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Бренд",
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
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                          child: TextField(
                            onTap: (){
                            },
                            enabled: false,
                            decoration: InputDecoration(
                              hintText: "Введите бренд",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
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
                      top: 36,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Прикрепить",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: 95,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...images.map(
                                    (el){
                                  return Container(
                                      width: 90,
                                      height: 90,
                                      margin: EdgeInsets.only(
                                          right: 10,top: 5
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                height: 80,
                                                width: 80,

                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    image: DecorationImage(
                                                        image: FileImage(
                                                            new File(el)
                                                        ),fit: BoxFit.fill
                                                    )
                                                ),

                                              )
                                          ),
                                          Positioned(
                                              top: 0,
                                              right: 0,
                                              child: GestureDetector(
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  child: Image.asset("assets/image/cansele.png"),
                                                ),
                                                onTap: (){
                                                  images.remove(el);
                                                  Get.forceAppUpdate();
                                                },
                                              )
                                          )
                                        ],
                                      )
                                  );
                                }
                            ),
                            GestureDetector(
                              child: Container(
                                height: 80,
                                width: 80,
                                margin: EdgeInsets.only(
                                    top: 12
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        width: 1,
                                        color: Color(0xffE6332A)
                                    )
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 11
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 28,
                                      width: 25,
                                      margin: EdgeInsets.only(
                                          bottom: 2
                                      ),
                                      child: Image.asset("assets/image/plus.png"),
                                    ),
                                    Text(
                                      "Загрузить файл",
                                      style: TextStyle(
                                          color: Color(0xffE6332A),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto"
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
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
                                                          images.add(pickedFile.path);
                                                          print(pickedFile.path);
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
                                                          images.add(pickedFile.path);
                                                          print(pickedFile.path);
                                                          Get.forceAppUpdate();

                                                        }
                                                        Get.back();
                                                      },
                                                    )
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
                      )

                    ],
                  ),
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 21,
                        top: 38
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff959595),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    height: 50,
                    width: Get.width-40,
                    child: Center(
                      child: Text(
                        "Отправить",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
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