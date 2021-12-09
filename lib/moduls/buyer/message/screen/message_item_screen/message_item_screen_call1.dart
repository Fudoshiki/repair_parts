import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../call_screen.dart';

class MessageItemScreenCall3 extends StatelessWidget{
  var focus =new FocusNode();
  bool sended=false;
  @override
  Widget build(BuildContext context) {
    focus.addListener(() {
      if(focus.hasFocus){
        sended=true;
        Get.forceAppUpdate();
      }else{
        sended=false;
        Get.forceAppUpdate();
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFE9E8),
        leading: Container(),
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 33,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              color: Color(0xffFFE9E8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Вернуться к звонку",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  ),
                  Text(
                    "03:34:21",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff2e2e33),
                        fontFamily: "Roboto"
                    ),
                  )
                ],
              ),
            ),
            onTap: (){
              Get.to(CallScreen());
            },

          ),

          Container(
            margin: EdgeInsets.only(
              top: 5
            ),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 4
            ),
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffE7E7E7),
                  width: 1
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
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
                    Container(
                      width: 34,
                      height: 34,
                      margin: EdgeInsets.only(
                          right: 10
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffDA6468),
                          borderRadius: BorderRadius.circular(
                              5
                          )
                      ),
                      child: Image.asset("assets/image/profile.png"),
                    ),
                    Text(
                      "Имя продавца",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    )

                  ],
                ),
                Container(
                  height: 18,
                  width: 18,
                  child: Image.asset("assets/image/phone.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 60,
                right: 20,
                top:10,
                bottom: 11
            ),
            height: 40,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(0xffE7E7E7),
                        width: 1
                    )
                )
            ),
            child: Row(
              children: [
                Text(
                  "Заказ 1-6",
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
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20
              ),
              children: [
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "26 марта 2021",
                        style: TextStyle(
                            color: Color(0xff959595),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),
                getMessage(
                  mine: true,
                  text: "Здравствуйте",
                  time: '18:40',
                  width: 110,
                  height: 40
                ),
                SizedBox(
                  height: 4,
                ),
                getMessage(
                    mine: true,
                    text: "Что по поводу доставки?",
                    time: '18:41',
                    width: 185,
                    height: 40
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: false?Alignment.centerRight:Alignment.centerLeft,

                  margin: EdgeInsets.only(
                    left: !false?Get.width-(246+55):0,
                    right: !false?0:Get.width-(229+55),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/image/done2.png",height: 10,width: 20,),
                      SizedBox(width: 12,),
                      Container(
                        padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 9,
                            bottom: 2
                        ),

                        width: 229*1.0,
                        height: 58*1.0,
                        decoration: BoxDecoration(
                            color: false? Color(0xffF3F3F3):Color(0xffE6332A),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Column(
                            children:[
                              Text(
                                "Добрый день, какая ТК для вас предпочтительнее?",
                                style: TextStyle(
                                    color: !false?Colors.white:Color(0xff2e2e33),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "18:41",
                                    style: TextStyle(
                                        color: !false?Color(0xffEDEDED):Color(0xff959595),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ],
                              )
                            ]
                        ),
                      )

                    ],
                  )
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: !true?Get.width-(246+55):0,
                    right: !true?0:Get.width-(246+66),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffF3F3F3)
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5
                  ),
                  
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffE6332A)
                        ),
                        padding: EdgeInsets.all(5),
                        child: Image.asset("assets/image/pause.png",height: 30,color: Colors.white,)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "00:15",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff959595)
                                  ),
                                ),
                                Text(
                                  "18:45",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width-200,
                            child: Row(
                              children: [
                                Container(
                                  height: 3,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE6332A),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE6332A)
                                  ),
                                ),
                                Container(
                                  width: Get.width-256,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffD6D6D6)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width-200,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "00:15",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                ),
                                Text(
                                  "18:45",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: !true?Get.width-(246+55):0,
                    right: !true?0:Get.width-(210),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffF3F3F3)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12
                  ),
                  height: 56,
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE6332A)
                          ),
                          padding: EdgeInsets.all(5),
                          child: Image.asset("assets/image/Group 834@2x.png",height: 30,color: Colors.white,)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "ДОКУМЕНТ.pdf",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w600,
                                color: Color(0xffE6332A)
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 96,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "11 MB",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                ),
                                Text(
                                  "18:45",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                )

                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                //
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "27 марта 2021",
                        style: TextStyle(
                            color: Color(0xff959595),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: !false?Get.width-(260+55):0,
                  ),


                  child: Row(
                    children: [
                      Image.asset("assets/image/done.png",height: 10,),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xffE6332A)
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5
                        ),
                        child: Row(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff)
                                ),
                                child: Image.asset("assets/image/play.png",height: 30,color: Colors.white,)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "00:15",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff959595)
                                        ),
                                      ),
                                      Text(
                                        "18:45",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff959595)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width-220,
                                  child: Row(
                                    children: [

                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white
                                        ),
                                      ),
                                      Container(
                                        width: Get.width-230,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color(0xffDE7C7C)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width-220,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "00:15",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                        ),
                                      ),
                                      Text(
                                        "18:45",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
                SizedBox(height: 8,),
                Container(
                  margin: EdgeInsets.only(
                    left: !false?Get.width-(237+55):0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffE6332A)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5
                  ),

                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffffffff)
                          ),
                          child: Image.asset("assets/image/pause.png",height: 30,color: Color(0xffE6332A),)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "00:15",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                ),
                                Text(
                                  "18:45",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff959595)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width-220,
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                      ),
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  width: Get.width-260,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffDE7C7C)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width-220,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "00:15",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Text(
                                  "08:05",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),





              ],
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 5,
              bottom: 5
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xffE7E7E7),
                  width: 1
                )
              )
            ),
            child: Row(
              children: [
                Container(
                  width: Get.width-90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 12
                        ),
                        height: 40,
                        width: Get.width-168,
                        child: TextField(
                          focusNode: focus,
                          style: TextStyle(
                              color: Color(0xff2e2e33),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"
                          ),
                          decoration: InputDecoration(
                            hintText: "Отправьте сообщение...",
                            hintStyle: TextStyle(
                              color: Color(0xff959595),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"
                            ),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset("assets/image/add.png",color: Color(0xff959595),),
                            SizedBox(width: 18,),
                            Image.asset("assets/image/photo.png",color: Color(0xff959595),),
                            SizedBox(width: 14,)
                          ],
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
                                                      "Камера",
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
                                                      "Загрузить фото",
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
                                                      "Документ",
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffE6332A)
                  ),
                  padding: EdgeInsets.only(
                    left: sended?12:14,
                    right:sended?12: 14,
                    top: 10,
                    bottom: 10
                  ),
                  child:sended?Image.asset("assets/image/send.png",color: Colors.white,): Image.asset("assets/image/micro.png",color: Colors.white,),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
  Widget getMessage({mine,text,time,width,height}){
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 9,
        bottom: 2
      ),
      alignment: mine?Alignment.centerRight:Alignment.centerLeft,

      margin: EdgeInsets.only(
        left: !mine?Get.width-(width+55):0,
        right: !mine?0:Get.width-(width+55),
      ),
      width: width*1.0,
      height: height*1.0,
      decoration: BoxDecoration(
        color: mine? Color(0xffF3F3F3):Color(0xffE6332A),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        children:[
          Text(
            "${text}",
            style: TextStyle(
              color: !mine?Colors.white:Color(0xff2e2e33),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                  "${time}",
                style: TextStyle(
                    color: !mine?Color(0xffEDEDED):Color(0xff959595),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
              ),
            ],
          )
        ]
      ),
    );
  }

}