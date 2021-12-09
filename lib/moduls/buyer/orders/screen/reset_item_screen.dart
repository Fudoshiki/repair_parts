import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'reset_item_query_success.dart';

class ResetItemScreen extends StatelessWidget{
  bool? bottom;

  var open =false;

  var open1=false;

  var open2=false;
  var open3=false;
  var open4=false;
  var open5=false;
  var open6=false;
  var open7=false;

  var images=[];

  ResetItemScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  var currentIndex =1.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null?SizedBox(
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
                true,
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
                  padding: EdgeInsets.all(0),
                  children: [
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
                                  "Возврат/обмен",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 28,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(height: 10,)

                              ],
                            ),
                          ],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 8,
                          bottom: 32
                      ),
                      padding: EdgeInsets.only(
                          bottom: 11
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
                                width: Get.width-180,
                                margin: EdgeInsets.only(
                                    bottom: 10
                                ),
                                child: Text(
                                  "Установка кронштейнов силового агрегата",
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
                      child: Row(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: open? Color(0xffE6332A):Colors.white,
                                      border: Border.all(
                                          color: Color(0xffE6332A),
                                          width: 1
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  padding: EdgeInsets.all(6),
                                  child: Image.asset("assets/image/done.png",color: Colors.white,),
                                ),
                                onTap: (){
                                  open=!open;
                                  Get.forceAppUpdate();
                                },
                              ),
                              SizedBox(width: 12,),
                              Text(
                                "Обмен",
                                style: TextStyle(
                                    color: Color(0xff2e2e33),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 20,),
                          Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: open1? Color(0xffE6332A):Colors.white,
                                      border: Border.all(
                                          color: Color(0xffE6332A),
                                          width: 1
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  padding: EdgeInsets.all(6),
                                  child: Image.asset("assets/image/done.png",color: Colors.white,),
                                ),
                                onTap: (){
                                  open1=!open1;
                                  Get.forceAppUpdate();
                                },
                              ),
                              SizedBox(width: 12,),
                              Text(
                                "Возврат",
                                style: TextStyle(
                                    color: Color(0xff2e2e33),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 37
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width-160,
                            margin: EdgeInsets.only(
                                top: 20
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xff525252),
                                        width: 1
                                    )
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 183,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "количество в заказе, шт:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff525252),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Text(
                                        "20",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff525252),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 240,
                                  child: Obx(
                                          ()=>Row(
                                        children: [
                                          Container(
                                            width: 130,
                                            child: Text(
                                              "количество к возврату, шт:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color(0xff525252),
                                                  fontFamily: "Roboto"
                                              ),
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
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(1),
                                                        color: Colors.white
                                                    ),
                                                    width: 12,
                                                    height: 2,
                                                  ),
                                                )
                                            ),
                                            onTap: (){
                                              if(currentIndex.value==0){

                                              }else{
                                                currentIndex.value-=1;
                                              }
                                            },
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 13
                                            ),
                                            child: Text(
                                              "${
                                                  currentIndex.value
                                              }",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color(0xff525252),
                                                  fontFamily: "Roboto"
                                              ),
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
                                              if(currentIndex.value==12){

                                              }else{
                                                currentIndex.value+=1;
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            width: 14,
                                          )
                                        ],
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Сумма, руб",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff525252),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Text(
                                    "420",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff525252),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                  SizedBox(height: 18,),
                                  Text(
                                    "42",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff525252),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ),
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
                            "Причина возврата",
                            style: TextStyle(
                                color: Color(0xff2e2e33),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Roboto"
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open2? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open2? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open2? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open2=!open2;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Ненадлежащее качество товара",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open3? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open3? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open3? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open3=!open3;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Нарушены сроки доставки",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open4? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open4? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open4? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open4=!open4;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Не комплект",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open5? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open5? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open5? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open5=!open5;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Товар не соответсвует заявленному",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open6? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open6? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open6? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open6=!open6;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Не подходит",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 10
                            ),
                            child:  Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: open7? Color(0xffFFE9E8):Colors.white,
                                        border: Border.all(
                                            color: open7? Color(0xffFFE9E8):Color(0xffD6D6D6),
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset("assets/image/done.png",color:open7? Color(0xffE6332A): Colors.white,),
                                  ),
                                  onTap: (){
                                    open7=!open7;
                                    Get.forceAppUpdate();
                                  },
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  "Другое",
                                  style: TextStyle(
                                      color: Color(0xff2e2e33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"
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
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 16,
                                  bottom: 20
                              ),
                              height: 100,
                              padding: EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                  right: 20
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffD6D6D6),
                                      width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child: TextField(
                                maxLines: 4,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff2e2e33)
                                ),
                                decoration: InputDecoration(
                                  hintText: "Поле заполнено",
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
                      width: Get.width,
                      height: images.length!=0?95:0,
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,bottom: 17
                      ),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 15
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 30,
                              width: (Get.width-50)/2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFE9E8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:13,
                                    width: 14,
                                    child: Image.asset("assets/image/add.png"),
                                  ),
                                  SizedBox(width: 7,),

                                  Text(
                                    "Прикрепить",
                                    style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
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
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 30,
                              width: (Get.width-50)/2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFE9E8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:13,
                                    width: 14,
                                    child: Image.asset("assets/image/photo.png"),
                                  ),
                                  SizedBox(width: 7,),
                                  Text(
                                    "Фото",
                                    style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto"
                                    ),
                                  )
                                ],
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
                      top: 10,
                      bottom: 21
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: open||open1?Color(0xffE6332A):Color(0xff959595)
                  ),
                  child: Center(
                    child: Text(
                      "Отправить",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                ),
                onTap:(){
                  Get.to(ResetItemQuerySuccess(bottom: true,));
                }
              )
            ]
        )
    );
  }

}