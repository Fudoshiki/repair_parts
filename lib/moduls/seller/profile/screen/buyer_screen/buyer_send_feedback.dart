import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

import 'buyer_feedback_sended.dart';

class BuyerSendFeedback extends StatelessWidget{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;

  var images=[];

  var open =false;
  var open1 =false;
  var open2 =false;
  var open3 =false;

  BuyerSendFeedback({@required this.bottom});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom!=null?         SizedBox(height: 70,


        child: CupertinoTabBar(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xffE7E7E7),
            ),
          ),
          backgroundColor: Colors.white,
          items: [//
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
              child:  Container(
                width: 19,
                height: 16,
                margin: EdgeInsets.only(
                    right: 20
                ),
                child: Image.asset("assets/image/arrow_left.png"),
              ),
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
                "Оставить жалобу",
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
              ),
              children: [
                Text(
                  "Укажите причину",
                  style: TextStyle(
                      color: Color(0xff2E2E33),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: open?Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffFFE9E8),
                              borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Image.asset("assets/image/done.png"),
                        ):Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xffD6D6D6),
                              width: 1
                            )
                          ),
                        ),
                        onTap: (){
                          open=!open;
                          open1=false;
                          open2=false;
                          open3=false;

                          Get.forceAppUpdate();
                        },
                      ),
                      SizedBox(width: 30,),
                      Text(
                        "Рассылка спама",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
                      GestureDetector(
                        child: open1?Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffFFE9E8),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Image.asset("assets/image/done.png"),
                        ):Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                        ),
                        onTap: (){
                          open1=!open1;
                          open=false;
                          open2=false;
                          open3=false;
                          Get.forceAppUpdate();
                        },
                      ),
                      SizedBox(width: 30,),
                      Text(
                        "Оскорбительное поведение",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
                      GestureDetector(
                        child: open2?Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffFFE9E8),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Image.asset("assets/image/done.png"),
                        ):Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                        ),
                        onTap: (){
                          open2=!open2;
                          open1=false;
                          open=false;
                          open3=false;
                          Get.forceAppUpdate();
                        },
                      ),
                      SizedBox(width: 30,),
                      Text(
                        "Мошенничество",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
                      GestureDetector(
                        child: open3?Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffFFE9E8),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Image.asset("assets/image/done.png"),
                        ):Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Color(0xffD6D6D6),
                                  width: 1
                              )
                          ),
                        ),
                        onTap: (){
                          open3=!open3;
                          open1=false;
                          open2=false;
                          open=false;
                          Get.forceAppUpdate();
                        },
                      ),
                      SizedBox(width: 30,),
                      Text(
                        "Несоблюдение условий договора",
                        style: TextStyle(
                            color: Color(0xff2E2E33),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Комментарий",
                  style: TextStyle(
                      color: Color(0xff2E2E33),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"
                  ),
                ),
                //Enter Description
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
                Text(
                  "Прикрепить",
                  style: TextStyle(
                      color: Color(0xff2E2E33),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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
                ),
                SizedBox(
                  height: 32,
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
                  top: 10
              ),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Text(
                  "Отправить",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Roboto"
                  ),
                ),
              ),
            ),
            onTap: (){
              Get.to(()=>BuyerFeedbackScreen(bottom:true));
            },
          )
        ],
      ),
    );
  }

}