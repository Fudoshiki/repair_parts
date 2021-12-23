
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/models/rows_companies.dart';

import 'edit_company_screen.dart';

class CompanyOOPScreen extends StatefulWidget{
  RowsCompanies companies;
  bool? bottom;

  CompanyOOPScreen(this.companies,{@required this.bottom});

  @override
  State<StatefulWidget> createState() {
    return CompanyOOPScreenState();
  }

}
class CompanyOOPScreenState extends State<CompanyOOPScreen>{

  bool open2 =false;
  bool open3=false;
  bool open4=false;
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  @override
  void initState() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottom!=null?         SizedBox(height: 70,


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
                  ),
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
                        "Организация",
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
                        "ИП/Юридическое лицо",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 11,)
                    ],
                  ),
                ],
              )
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 30),
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
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text(
                        "ИНН",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 2,),

                      getDataField("${widget.companies.inn}"),
                      getDataField("${widget.companies.name}"),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 28,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Юридический адрес",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 7,),
                      getDataField("${widget.companies.juristicAddress!.country}"),
                      getDataField("${widget.companies.juristicAddress!.region}"),
                      getDataField("${widget.companies.juristicAddress!.city}"),
                      getDataField("${widget.companies.juristicAddress!.street}"),
                      getDataField("${widget.companies.juristicAddress!.building}"),
                      getDataField("${widget.companies.juristicAddress!.postcode}"),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 28,
                      left: 20,
                      right: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Реквизиты компании",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 11,),
                      Text(
                        "КПП",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 6,),
                      getDataField("${widget.companies.kpp}"),
                      Text(
                        "ОГРН",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(height: 6,),
                      getDataField("${widget.companies.ogrn}")

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
                        "Пожалуйста, внимательно ознакомьтесь со следующими документами",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                                    color: Color(0xffC4C4C4)
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
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'условия политики обработки персональных данных',
                                      style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Roboto",
                                        decoration: TextDecoration.underline,

                                      ),

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
                                    color: Color(0xffC4C4C4)
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
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'правила заключения договора поставки',
                                      style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Roboto",
                                        decoration: TextDecoration.underline,

                                      ),

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
                                    color: Color(0xffC4C4C4)
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
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'условия пользовательского соглашения для покупателей ',
                                      style: TextStyle(
                                        color: Color(0xffE6332A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Roboto",
                                        decoration: TextDecoration.underline,

                                      ),
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
                      left: 20,
                      right: 20,
                      bottom: 20,top: 23
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffE6332A),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          height: 30,
                          width: (Get.width-50)/2,
                          child: Center(
                            child: Text(
                              "Редактировать",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Get.to(()=>EditCompanyScreen(bottom: true,));
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff959595),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          height: 30,
                          width: (Get.width-50)/2,
                          child: Center(
                            child: Text(
                              "Удалить",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Get.dialog(
                            Center(
                              child: Container(
                                height: 130,
                                width: Get.width-86,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white
                                ),
                                child:Column(
                                  children: [
                                    Container(
                                      height: 72,
                                      padding: EdgeInsets.all(2),
                                      child: Scaffold(
                                        body: Container(
                                          margin: EdgeInsets.only(
                                              top: 26,
                                              bottom: 16
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Удалить организацию?",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 58,
                                      padding: EdgeInsets.only(left: 10,right: 10,bottom: 25),

                                      child: Scaffold(
                                        body: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffBABABA),
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                height: 30,
                                                width: (Get.width-116)/2,
                                                child: Center(
                                                  child: Text(
                                                    "Да",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.white,
                                                        fontFamily: "Roboto"
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onTap: (){
                                                Get.back();
                                              },
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE6332A),
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                height: 30,
                                                width: (Get.width-116)/2,
                                                child: Center(
                                                  child: Text(
                                                    "Нет",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.white,
                                                        fontFamily: "Roboto"
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
  Widget getDataField(text){
    return  Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 48,
        width: Get.width-40,
        padding: EdgeInsets.only(
            left: 20,
            top: 15,bottom: 15,
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
        child: Text(
          "$text",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff2e2e33),
              fontFamily: "Roboto"

          ),
        )
    );

  }


}