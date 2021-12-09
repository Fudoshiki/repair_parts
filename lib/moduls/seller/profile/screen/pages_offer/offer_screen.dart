import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/query/screen/fullscreen_image.dart';


class OfferScreen extends StatelessWidget{
  bool? bottom;
  bool open =false;
  bool open2=false;
  bool open3=false;
  bool open4=false;
  var a =0;
  var b =0;

  int currentIndex=1;
  var sorted ="".obs;

  var controller =new PageController(initialPage: 1);
  OfferScreen({@required this.bottom});
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
                true,
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
                                "Запрос №1-12",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "23.03.2021 07:45",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 35
                    ),
                    child: Text(
                      "Покупатель",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 15
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffDA6468),
                                  borderRadius: BorderRadius.circular(5)
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  "+ 7 (000) 000-00-00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset("assets/image/phone.png"),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset("assets/image/messages.png"),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15
                        ),


                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Адрес доставки",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff2e2e33),
                                  fontFamily: "Roboto"
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
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
                                  width: Get.width-140,
                                  child: Text(
                                    "Санкт-Петербург, Прибрежная улица, д.4",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                    onTap: (){
                    },
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 26,
                    ),
                    child: Text(
                      "Комментарий",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 11,
                    ),
                    child: Text(
                      "Добрый день. Помогите, пожалуйста, с поиском детали для грузовика КАМАЗ 4310 95г. выпуска. Нужна гайка, которая находится на нижней части крышки коробки сцепления. Заранее благодарю.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 15,
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
                      showModalBottomSheet(shape: RoundedRectangleBorder(
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
                                              fontWeight: FontWeight.w600,
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
                                              fontWeight: FontWeight.w600,
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

                  Container(

                      margin: EdgeInsets.only(
                          top: 8,
                          left: 20,
                          right: 20,
                      ),
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top:BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    ),
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            padding: EdgeInsets.only(
                                bottom: 24,
                                top: 14
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 80,
                                    height: 100,
                                    margin: EdgeInsets.only(
                                        right: 20
                                    ),
                                    child: Image.asset("assets/image/DSC_0211 2.png"),
                                  ),
                                  onTap: (){
                                    Get.to(FullScreenImage());
                                  },
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
                                        margin:EdgeInsets.only(
                                            top: 23
                                        ),
                                        child:Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Количество: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
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
                          )
                        ],
                      )
                  ),
                  Container(

                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 13
                      ),
                      padding: EdgeInsets.only(
                          bottom: 21
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color: Color(0xffE7E7E7)
                                  ),
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
                            ),
                            padding: EdgeInsets.only(
                                bottom: 24,
                                top: 14
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 80,
                                    height: 100,
                                    margin: EdgeInsets.only(
                                        right: 20
                                    ),
                                    child: Image.asset("assets/image/DSC_0211 2.png"),
                                  ),
                                  onTap: (){
                                    Get.to(FullScreenImage());
                                  },
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
                                        margin:EdgeInsets.only(
                                            top: 23
                                        ),
                                        child:Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Количество: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Color(0xff2e2e33),
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                top: 17
                            ),
                           
                            decoration: BoxDecoration(
                                border: Border(
                                   
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xffE7E7E7)
                                    )
                                )
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
                          )
                        ],
                      )
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

                  Container(
                    margin: EdgeInsets.only(
                        bottom: 14,
                      left: 20,
                      right: 20
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                            child: Container(
                                width: (Get.width-50)/2,
                                height: 31,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffFFE9E8)
                                ),
                                padding: EdgeInsets.all(
                                    6
                                ),
                                child:Center(
                                  child: Text(
                                    "Вложения",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Color(0xff2e2e33),
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                )
                            ),
                            onTap:(){
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
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: Get.width-26,
                                              height: 260,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 37,
                                                        top: 36
                                                    ),
                                                    child: Text(
                                                      "Вложения",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 24,
                                                          color: Color(0xff2e2e33),
                                                          fontFamily: "Roboto"
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 37,
                                                        top: 14
                                                    ),
                                                    child:Text(
                                                      "Файлы",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 18,
                                                          color: Color(0xff2e2e33),
                                                          fontFamily: "Roboto"
                                                      ),
                                                    ),
                                                  ),

                                                  GestureDetector(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 37,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Color(0xffE6332A)
                                                              )
                                                          )
                                                      ),
                                                      child: Text(
                                                        "image22121",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 18,
                                                            color: Color(0xffE6332A),
                                                            fontFamily: "Roboto"
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      Get.to(FullScreenImage());
                                                    },
                                                  ),
                                                  GestureDetector(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 37,
                                                          top: 2
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Color(0xffE6332A)
                                                              )
                                                          )
                                                      ),
                                                      child: Text(
                                                        "image222",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 18,
                                                          color: Color(0xffE6332A),
                                                          fontFamily: "Roboto",

                                                        ),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      Get.to(FullScreenImage());
                                                    },
                                                  )
                                                ],
                                              ),
                                            ),


                                          ],
                                        ),
                                      )
                                  );
                                },
                              );
                            }
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                            child: Container(
                                width: (Get.width-50)/2,
                                height: 31,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xff959595)
                                ),
                                padding: EdgeInsets.all(
                                    6
                                ),
                                child:Center(
                                  child: Text(
                                    "Отправить предложение",
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

                      ],
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