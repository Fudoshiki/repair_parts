import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/moduls/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/add_address.dart';

class BacketScreen2 extends StatelessWidget{
  BacketController _backetController = Get.put(BacketController());
  int a= 0;
  int b= 0;
  bool? bottom;
  BacketScreen2({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  MainController _mainController =Get.find();
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

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
                child: Container(

                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 40
                        ),
                        child: Text(
                          "Корзина",
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
                          bottom: 22
                        ),
                        padding: EdgeInsets.only(
                          bottom: 14
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 16,
                                  top: 28
                              ),
                              child: Text(
                                "Адрес доставки",
                                style: TextStyle(
                                    color: Color(0xff2E2E33),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              width: 40,
                                              height: 40,
                                              margin: EdgeInsets.only(
                                                  right: 20
                                              ),
                                              padding: EdgeInsets.all(11),
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFFE9E8),
                                                  borderRadius: BorderRadius.circular(6)
                                              ),
                                              child: Image.asset("assets/image/marcker.png",
                                                width: 12,height: 18,)
                                          ),
                                          Container(
                                            width: Get.width-108,
                                            child: Text(
                                              "${_backetController.address.value}",
                                              style: TextStyle(
                                                  color: Color(0xffE6332A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 8,
                                        height: 14,
                                        child: Image.asset("assets/image/arrow_right.png"),
                                      )
                                    ],
                                  )
                              ),
                              onTap: (){
                                Get.to(AddAddress());
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xffE7E7E7)
                                )
                            )
                        ),
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 13
                        ),
                        padding: EdgeInsets.only(
                          bottom: 21
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 100,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/DSC_0211 2.png"),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width-140,
                                  margin: EdgeInsets.only(
                                      bottom: 10
                                  ),
                                  child: Text(
                                    "Амортизатор гидравлический МТЛБ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(0xff2E2E33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Артикул: 5320-1109359",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Бренд: ХТЗ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  width: Get.width-140,
                                  margin: EdgeInsets.only(top: 18),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    color: Color(0xffF3F3F3)
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(1),
                                                        color: Color(0xff717171)
                                                    ),
                                                    width: 12,
                                                    height: 2,
                                                  ),
                                                )
                                            ),
                                            onTap: (){
                                              if(a==0){

                                              }else{
                                                a-=1;
                                                Get.forceAppUpdate();
                                              }
                                            },
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 13
                                            ),
                                            child: Text(
                                                "${
                                                    a
                                                }"
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    color: Color(0xffE6332A)
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    height: 12,
                                                    width: 12,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          top:5,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(1),
                                                                color: Colors.white
                                                            ),
                                                            width: 12,
                                                            height: 2,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 5,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(1),
                                                                color: Colors.white
                                                            ),
                                                            width: 2,
                                                            height: 12,
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                )
                                            ),
                                            onTap: (){
                                              if(a==12){

                                              }else{
                                                a+=1;
                                                Get.forceAppUpdate();

                                              }
                                            },
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        padding: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Color(0xffD6D6D6)
                                            )
                                        ),
                                        child: Image.asset("assets/image/cansel_back.png"),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xffE7E7E7)
                                )
                            )
                        ),
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 13
                        ),
                        padding: EdgeInsets.only(
                            bottom: 21
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 100,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/conector.png"),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width-140,
                                  margin: EdgeInsets.only(
                                      bottom: 10
                                  ),
                                  child: Text(
                                    "Патрубок радиатора нижний евро-силикон",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(0xff2E2E33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Артикул: 5320-1109359",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Бренд: ХТЗ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  width: Get.width-140,
                                  margin: EdgeInsets.only(top: 18),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    color: Color(0xffF3F3F3)
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(1),
                                                        color: Color(0xff717171)
                                                    ),
                                                    width: 12,
                                                    height: 2,
                                                  ),
                                                )
                                            ),
                                            onTap: (){
                                              if(a==0){

                                              }else{
                                                a-=1;
                                                Get.forceAppUpdate();
                                              }
                                            },
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 13
                                            ),
                                            child: Text(
                                                "${
                                                    a
                                                }"
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    color: Color(0xffE6332A)
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    height: 12,
                                                    width: 12,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          top:5,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(1),
                                                                color: Colors.white
                                                            ),
                                                            width: 12,
                                                            height: 2,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 5,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(1),
                                                                color: Colors.white
                                                            ),
                                                            width: 2,
                                                            height: 12,
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                )
                                            ),
                                            onTap: (){
                                              if(a==12){

                                              }else{
                                                a+=1;
                                                Get.forceAppUpdate();

                                              }
                                            },
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        padding: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(
                                            color: Color(0xffD6D6D6)
                                          )
                                        ),
                                        child: Image.asset("assets/image/cansel_back.png"),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 30
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Выбрать регион Поставщика",
                                    style: TextStyle(
                                        color: Color(0xff2E2E33),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 50,
                                      width: Get.width-40,
                                      margin: EdgeInsets.only(
                                          top: 12
                                      ),
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
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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
                                    onTap: (){
                                      _mainController.controllerBacketPage.jumpToPage(1);
                                    },
                                  )

                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 23
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Выбрать продавца",
                                    style: TextStyle(
                                        color: Color(0xff2E2E33),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 50,
                                      width: Get.width-40,
                                      margin: EdgeInsets.only(
                                          top: 12
                                      ),
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
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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
                                    onTap: (){
                                      _mainController.controllerBacketPage.jumpToPage(2);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Enter Description
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top:28
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              "Комментарий",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 16,
                                  bottom: 20
                              ),
                              height: 140,
                              padding: EdgeInsets.all(20),
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
                                  hintText: "Опишите словами, что необходимо найти",
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
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 10,left: 20,right: 20,
                          bottom: 22
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
                                  ..._backetController.images.map(
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
                                                        _backetController.images.remove(el);
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
                                                                _backetController.images.add(pickedFile.path);
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
                                                                _backetController.images.add(pickedFile.path);
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
                              bottom: 25
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffE6332A),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          height: 50,
                          width: Get.width-40,
                          child: Center(
                            child: Text(
                              "Отправить запрос",
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
                          _mainController.controllerBacketPage.jumpToPage(3);
                        },
                      )
                    ],
                  )
                )
            )
          ],
        )
    );
  }

}