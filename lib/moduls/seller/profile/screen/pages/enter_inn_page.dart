import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class EnterInnPage extends StatelessWidget{

  bool? bottom;
  EnterInnPage({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
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
                        "ИП/Юридическое лицо",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                        ),
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
                            fontWeight: FontWeight.w600,
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
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"

                            ),
                            decoration: InputDecoration(
                              labelText: "ИНН",
                              labelStyle:TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto",
                                  height: 0.5

                              ),
                              hintText: "1234567890",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"

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



              ],
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 40,
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
            },
          )

        ],
      ),
    );
  }

}