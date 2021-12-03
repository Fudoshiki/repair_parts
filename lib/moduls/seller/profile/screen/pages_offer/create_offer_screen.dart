import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/query/screen/fullscreen_image.dart';


class CreateOfferScreen extends StatelessWidget{
  bool? bottom;
  bool open =false;
  bool open2=false;
  bool open3=false;
  bool open4=false;
  var a =0;
  var b =0;

  int currentIndex=1;
  var sorted ="".obs;
  var sorted1 = "".obs;
  var controller =new PageController(initialPage: 1);

  var controllerText =new TextEditingController();

  bool open10 =false;
  CreateOfferScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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
                          top: 29
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Создать предложение",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 28,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),

                  //Выбрать организацию
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 17,
                    ),
                    child: Text(
                      "Выбрать организацию",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: Get.width-40,
                      margin: EdgeInsets.only(
                          top: 12,
                          left:20,
                          right: 20
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
                              "${sorted.value==""?"Не выбрано":sorted.value}",
                              style: TextStyle(
                                  color: sorted.value==""?Color(0xff959595):Color(0xff2e2e33),
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
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),context: context, builder: (c){
                        return FractionallySizedBox(
                            heightFactor: 0.5,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20
                              ),
                              height: 328,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)
                                  )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 59,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffE7E7E7),
                                                width: 1
                                            )
                                        )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Организация",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Color(0xff2e2e33),
                                              fontFamily: "Roboto"
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 59,
                                      padding: EdgeInsets.only(left: 5),
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
                                          Text(
                                            "ООО Запчасти",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            child: sorted.value=="ООО Запчасти"
                                                ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                                : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: (){
                                      sorted.value="ООО Запчасти";
                                      Get.forceAppUpdate();
                                      Get.back();

                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 59,
                                      padding: EdgeInsets.only(left: 5),
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
                                          Text(
                                            "Добавить организацию",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff2e2e33),
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            child: sorted.value=="Добавить организацию"
                                                ? Image.asset("assets/image/radio_done.png",color: Color(0xffE6332A),)
                                                : Image.asset("assets/image/radio_off.png",color: Color(0xffE6332A)),
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: (){
                                      sorted.value="Добавить организацию";
                                      Get.forceAppUpdate();
                                      Get.back();

                                    },
                                  ),

                                ],
                              ),
                            )
                        );
                      });
                    },
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          bottom: 15,
                          top: 10,
                          right:20
                      ),
                      child: Row(
                          children:[
                            Container(
                                width: (Get.width-40)/2,
                                child:Text(
                                  "Цены указаны:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                )
                            ),
                            Container(
                                width: (Get.width-40)/2,
                                child:Text(
                                  "Комиссия:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                )
                            ),
                          ]
                      )
                  ),
                  //Информация о запчасти
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 17,
                    ),
                    child: Text(
                      "Информация о запчасти",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 11,
                      right: 20
                    ),
                    child: Column(
                      children: [

                        GestureDetector(
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 20
                              ),
                              width: Get.width-40,
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:Color(0xffD6D6D6),
                                      width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: Get.width-90,
                                    child: TextField(
                                      enabled: sorted1.value=="Ввести вручную"
                                          ?true
                                          :false,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          color: Color(0xff2e2e33),
                                          fontSize: 14,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          height: 1.7

                                      ),
                                      controller: controllerText,
                                      decoration: InputDecoration(
                                        hintText:sorted1.value==""
                                            ? "Наименование":sorted1.value=="Ввести вручную"?"":sorted1.value,
                                        hintStyle: TextStyle(
                                            color:sorted1.value==""
                                                ? Color(0xff959595):Color(0xff2e2e33),
                                            fontSize: 14,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            height: 2
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
                                  Container(
                                    width: 14,
                                    height: 7,
                                    child: Image.asset(
                                        "assets/image/arrow_down.png",
                                        color:Color(0xffE6332A)
                                    ),
                                  )
                                ],
                              )
                          ),
                          onTap: (){
                            showModalBottomSheet(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),context: context, builder: (c){
                              return FractionallySizedBox(
                                  heightFactor: 0.65,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20
                                    ),
                                    height: 328,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)
                                        )
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 59,

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Наименование",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                top: 10
                                            ),
                                            height: 50,
                                            padding: EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                                color: Color(0xffF3F3F3),

                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset("assets/image/Group@2x.png",color: Color(0xffE6332A)),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Каталог",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Color(0xffE6332A),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          onTap: (){
                                            sorted1.value="Каталог";
                                            controllerText.text="";
                                            Get.forceAppUpdate();
                                            Get.back();

                                          },
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              top: 10
                                            ),
                                            height: 50,
                                            padding: EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Color(0xffF3F3F3),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset("assets/image/Group.png",color: Color(0xffE6332A)),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Запчасти",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Color(0xffE6332A),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          onTap: (){
                                            sorted1.value="Запчасти";
                                            Get.forceAppUpdate();
                                            Get.back();

                                          },
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                top: 10
                                            ),
                                            height: 50,
                                            padding: EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Color(0xffF3F3F3),

                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset("assets/image/plus.png",color: Color(0xffE6332A)),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Ввести вручную",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Color(0xffE6332A),
                                                      fontFamily: "Roboto"
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          onTap: (){
                                            sorted1.value="Ввести вручную";
                                            controllerText.text="";
                                            Get.forceAppUpdate();
                                            Get.back();

                                          },
                                        ),
                                      ],
                                    ),
                                  )
                              );
                            });
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 10
                          ),
                          padding: EdgeInsets.only(
                            left: 20
                          ),
                          width: Get.width-40,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:Color(0xffD6D6D6),
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                color: Color(0xff2e2e33),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                height: 1.7

                            ),
                            decoration: InputDecoration(
                              hintText: "Бренд",

                              hintStyle: TextStyle(
                                  color: Color(0xff959595),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  height: 2
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
                        Container(
                          margin: EdgeInsets.only(
                            top: 10
                          ),
                          padding: EdgeInsets.only(
                              left: 20
                          ),
                          width: Get.width-40,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:Color(0xffD6D6D6),
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                color: Color(0xff2e2e33),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                height: 1.7

                            ),
                            decoration: InputDecoration(
                              hintText: "Артикул",
                              hintStyle: TextStyle(
                                  color: Color(0xff959595),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  height: 2
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

                      ],
                    ),
                  ),

                  //Цена за ед., руб:
                  Container(
                      margin: EdgeInsets.only(
                        top: 8,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 17
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Цена за ед., руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Container(
                                        width: 98,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Color(0xff2e2e33),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                height: 1.7

                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  height: 2
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
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Количество в наличии, шт:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Container(
                                        width: 98,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Color(0xff2e2e33),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                height: 1.7
                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  height: 2
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
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Количество под заказ, шт:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Container(
                                        width: 98,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Color(0xff2e2e33),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                height: 1.7

                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  height: 2
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
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Срок под заказ, дн:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Container(
                                        width: 98,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Color(0xff2e2e33),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                height: 1.7

                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  height: 2
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
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 14
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Сумма, руб:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                      Container(
                                        width: 98,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xffD6D6D6),
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Color(0xff2e2e33),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                height: 1.7

                                            ),
                                            controller: new TextEditingController()..text="400",
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Color(0xff959595),
                                                  fontSize: 14,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  height: 2
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
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          open10?Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 11,
                                ),
                                decoration: BoxDecoration(
                                     border: Border(
                                              top: BorderSide(
                                                  color:Color(0xffE7E7E7),
                                                  width: 1
                                              )
                                     )
                                ),
                                padding: EdgeInsets.only(
                                  top: 11,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 17,
                                          bottom:11
                                      ),
                                      child: Text(
                                        "Информация о запчасти",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff2e2e33),
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20
                                          ),
                                          width: Get.width-40,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:Color(0xffD6D6D6),
                                                  width: 1
                                              ),
                                              borderRadius: BorderRadius.circular(4)
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: Get.width-90,
                                                child: TextField(
                                                  enabled: sorted1.value=="Ввести вручную"
                                                      ?true
                                                      :false,
                                                  keyboardType: TextInputType.number,
                                                  style: TextStyle(
                                                      color: Color(0xff2e2e33),
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.7

                                                  ),
                                                  controller: controllerText,
                                                  decoration: InputDecoration(
                                                    hintText:sorted1.value==""
                                                        ? "Наименование":sorted1.value=="Ввести вручную"?"":sorted1.value,
                                                    hintStyle: TextStyle(
                                                        color:sorted1.value==""
                                                            ? Color(0xff959595):Color(0xff2e2e33),
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        fontWeight: FontWeight.w400,
                                                        height: 2
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
                                              Container(
                                                width: 14,
                                                height: 7,
                                                child: Image.asset(
                                                    "assets/image/arrow_down.png",
                                                    color:Color(0xffE6332A)
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                      onTap: (){
                                        showModalBottomSheet(shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),context: context, builder: (c){
                                          return FractionallySizedBox(
                                              heightFactor: 0.7,
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20
                                                ),
                                                height: 328,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(10),
                                                        topRight: Radius.circular(10)
                                                    )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 59,

                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            "Наименование",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w700,
                                                                fontSize: 18,
                                                                color: Color(0xff2e2e33),
                                                                fontFamily: "Roboto"
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 10
                                                        ),
                                                        height: 50,
                                                        padding: EdgeInsets.only(left: 5),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          color: Color(0xffF3F3F3),

                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20,
                                                              height: 20,
                                                              child: Image.asset("assets/image/Group@2x.png",color: Color(0xffE6332A)),
                                                            ),
                                                            SizedBox(width: 10,),
                                                            Text(
                                                              "Каталог",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.w600,
                                                                  fontSize: 14,
                                                                  color: Color(0xffE6332A),
                                                                  fontFamily: "Roboto"
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                      onTap: (){
                                                        sorted1.value="Каталог";
                                                        controllerText.text="";
                                                        Get.forceAppUpdate();
                                                        Get.back();

                                                      },
                                                    ),
                                                    GestureDetector(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 10
                                                        ),
                                                        height: 50,
                                                        padding: EdgeInsets.only(left: 5),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          color: Color(0xffF3F3F3),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20,
                                                              height: 20,
                                                              child: Image.asset("assets/image/Group.png",color: Color(0xffE6332A)),
                                                            ),
                                                            SizedBox(width: 10,),
                                                            Text(
                                                              "Запчасти",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.w600,
                                                                  fontSize: 14,
                                                                  color: Color(0xffE6332A),
                                                                  fontFamily: "Roboto"
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                      onTap: (){
                                                        sorted1.value="Запчасти";
                                                        Get.forceAppUpdate();
                                                        Get.back();

                                                      },
                                                    ),
                                                    GestureDetector(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 10
                                                        ),
                                                        height: 50,
                                                        padding: EdgeInsets.only(left: 5),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          color: Color(0xffF3F3F3),

                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20,
                                                              height: 20,
                                                              child: Image.asset("assets/image/plus.png",color: Color(0xffE6332A)),
                                                            ),
                                                            SizedBox(width: 10,),
                                                            Text(
                                                              "Ввести вручную",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.w600,
                                                                  fontSize: 14,
                                                                  color: Color(0xffE6332A),
                                                                  fontFamily: "Roboto"
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                      onTap: (){
                                                        sorted1.value="Ввести вручную";
                                                        controllerText.text="";
                                                        Get.forceAppUpdate();
                                                        Get.back();

                                                      },
                                                    ),
                                                  ],
                                                ),
                                              )
                                          );
                                        });
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10
                                      ),
                                      padding: EdgeInsets.only(
                                          left: 20
                                      ),
                                      width: Get.width-40,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:Color(0xffD6D6D6),
                                              width: 1
                                          ),
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Color(0xff2e2e33),
                                            fontSize: 14,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            height: 1.7

                                        ),
                                        decoration: InputDecoration(
                                          hintText: "Бренд",

                                          hintStyle: TextStyle(
                                              color: Color(0xff959595),
                                              fontSize: 14,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              height: 2
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10
                                      ),
                                      padding: EdgeInsets.only(
                                          left: 20
                                      ),
                                      width: Get.width-40,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:Color(0xffD6D6D6),
                                              width: 1
                                          ),
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Color(0xff2e2e33),
                                            fontSize: 14,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            height: 1.7

                                        ),
                                        decoration: InputDecoration(
                                          hintText: "Артикул",
                                          hintStyle: TextStyle(
                                              color: Color(0xff959595),
                                              fontSize: 14,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              height: 2
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

                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                    top: 8,
                                    
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Color(0xffE7E7E7),
                                              width: 1
                                          )
                                      )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 17
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Цена за ед., руб:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 98,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:Color(0xffD6D6D6),
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(4)
                                                    ),
                                                    child: Center(
                                                      child: TextField(
                                                        textAlign: TextAlign.center,
                                                        keyboardType: TextInputType.number,
                                                        style: TextStyle(
                                                            color: Color(0xff2e2e33),
                                                            fontSize: 14,
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.7

                                                        ),
                                                        decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color: Color(0xff959595),
                                                              fontSize: 14,
                                                              fontFamily: "Roboto",
                                                              fontWeight: FontWeight.w400,
                                                              height: 2
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
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Количество в наличии, шт:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 98,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:Color(0xffD6D6D6),
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(4)
                                                    ),
                                                    child: Center(
                                                      child: TextField(
                                                        textAlign: TextAlign.center,
                                                        keyboardType: TextInputType.number,
                                                        style: TextStyle(
                                                            color: Color(0xff2e2e33),
                                                            fontSize: 14,
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.7
                                                        ),
                                                        decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color: Color(0xff959595),
                                                              fontSize: 14,
                                                              fontFamily: "Roboto",
                                                              fontWeight: FontWeight.w400,
                                                              height: 2
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
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Количество под заказ, шт:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 98,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:Color(0xffD6D6D6),
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(4)
                                                    ),
                                                    child: Center(
                                                      child: TextField(
                                                        textAlign: TextAlign.center,
                                                        keyboardType: TextInputType.number,
                                                        style: TextStyle(
                                                            color: Color(0xff2e2e33),
                                                            fontSize: 14,
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.7

                                                        ),
                                                        decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color: Color(0xff959595),
                                                              fontSize: 14,
                                                              fontFamily: "Roboto",
                                                              fontWeight: FontWeight.w400,
                                                              height: 2
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
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Срок под заказ, дн:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 98,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:Color(0xffD6D6D6),
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(4)
                                                    ),
                                                    child: Center(
                                                      child: TextField(
                                                        textAlign: TextAlign.center,
                                                        keyboardType: TextInputType.number,
                                                        style: TextStyle(
                                                            color: Color(0xff2e2e33),
                                                            fontSize: 14,
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.7

                                                        ),
                                                        decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color: Color(0xff959595),
                                                              fontSize: 14,
                                                              fontFamily: "Roboto",
                                                              fontWeight: FontWeight.w400,
                                                              height: 2
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
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Сумма, руб:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff2e2e33),
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 98,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:Color(0xffD6D6D6),
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(4)
                                                    ),
                                                    child: Center(
                                                      child: TextField(
                                                        textAlign: TextAlign.center,
                                                        keyboardType: TextInputType.number,
                                                        style: TextStyle(
                                                            color: Color(0xff2e2e33),
                                                            fontSize: 14,
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.7

                                                        ),
                                                        controller: new TextEditingController()..text="400",
                                                        decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color: Color(0xff959595),
                                                              fontSize: 14,
                                                              fontFamily: "Roboto",
                                                              fontWeight: FontWeight.w400,
                                                              height: 2
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
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            ],
                          ):Container(),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Color(0xffE7E7E7),
                                          width: 1
                                      ),
                                      bottom: BorderSide(
                                          color: Color(0xffE7E7E7),
                                          width: 1
                                      )
                                  )
                              ),
                              padding: EdgeInsets.only(
                                  top: 15,
                                  bottom: 15
                              ),
                              child:  Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color:Color(0xffE6332A)
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 14,
                                      height: 14,
                                      child: Image.asset(
                                          "assets/image/plus.png"
                                      ),
                                    ),
                                    SizedBox(width: 4,),
                                    Text(
                                      "Добавить товар",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffE6332A),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto"
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: (){
                              open10=true;
                            },
                          )

                        ],
                      )
                  ),

                  //Итого, руб:
                  Container(
                    margin: EdgeInsets.only(
                      top: 23,
                        bottom: 13,
                        left: 20,
                        right: 20
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Итого, руб:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 13,
                        left: 20,
                        right: 20
                    ),

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Комиссия, руб:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 13,
                        left: 20,
                        right: 20
                    ),

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "За вычетом комиссии, руб:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 33,
                        left: 20,
                        right: 20
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "CASH, руб.",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff2e2e33),
                              fontFamily: "Roboto"
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Отправить
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 14,
                        left: 20,
                        right: 20
                    ),
                    child:GestureDetector(
                        child: Container(
                            width: (Get.width-50)/2,
                            height: 31,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color:sorted1.value!=""?Color(0xffE6332A): Color(0xff959595)
                            ),
                            padding: EdgeInsets.all(
                                6
                            ),
                            child:Center(
                              child: Text(
                                "Отправить",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            )
                        ),
                        onTap:(){

                        }
                    ),
                  )


                ],
              ),
            ),

          ],
        )
    );

  }

}