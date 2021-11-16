import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';

class ChooseRegion extends StatelessWidget{
  MainController mainController = Get.find();
  bool alt =false;
  bool brt =false;
  bool reg =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                left: 20,
                top: 40
              ),
              child: Icon(Icons.arrow_back),
            ),
            onTap: (){
              try{
                mainController.controllerMainPage.jumpToPage(1);
              }catch(e){
                mainController.controllerBacketPage.jumpToPage(0);
              }
            },
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    height: 44,
                    width: Get.width-106,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xffC4C4C4),
                            width: 1
                        )
                    ),
                    child: TextField(
                      enabled: false,
                      onTap: (){
                      },
                      decoration: InputDecoration(
                          hintText: "Поиск запчастей",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff959595),
                              fontFamily: "Roboto"

                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          prefixIcon: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 12
                            ),
                            width: 14,
                            height: 14,
                            child: Image.asset(
                              "assets/image/search_icon.png",
                              fit: BoxFit.fill,
                            ),
                          )
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 26
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(
                            right: 20,

                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffFFE9E8),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Image.asset("assets/image/done.png",
                            width: 8,height: 6,)
                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Все регионы",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"

                            )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 9
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A",
                        style: TextStyle(
                          color: Color(0xff2e2e33),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto"
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 8
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Алтайский край (3)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                              alt?Container(
                                width: 8,
                                height: 14,
                                child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                              )   :Container(
                                  width: 14,
                                  height: 8,
                                  child: Image.asset("assets/image/arrow_down.png",color: Color(0xff959595))
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          alt=!alt;
                          Get.forceAppUpdate();
                        },
                      ),
                      alt?Container(
                        margin: EdgeInsets.only(
                          left: 28
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 12
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Алтайск",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 12
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Барнаул",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ):Container()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 9
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Б",
                        style: TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 8
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Алтайский край (3)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                              brt?Container(
                                width: 8,
                                height: 14,
                                child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                              )   :Container(
                                  width: 14,
                                  height: 8,
                                  child: Image.asset("assets/image/arrow_down.png",color: Color(0xff959595))
                              )                         ],
                          ),
                        ),
                        onTap: (){
                          brt=!brt;
                          Get.forceAppUpdate();
                        },
                      ),
                      brt?Container(
                        margin: EdgeInsets.only(
                            left: 28
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 12
                              ),
                              child: Row(
                                children: [

                                  Text(
                                      "Ещё нет зарегистрированных организаций",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33).withOpacity(0.33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ):Container()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 9
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "В",
                        style: TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 8
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Брянская область (5)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                              reg?Container(
                                width: 8,
                                height: 14,
                                child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                              )   :Container(
                                  width: 14,
                                  height: 8,
                                  child: Image.asset("assets/image/arrow_down.png",color: Color(0xff959595))
                              )                ],
                          ),
                        ),
                        onTap: (){
                          reg=!reg;
                          Get.forceAppUpdate();
                        },
                      ),
                      reg?Container(
                        margin: EdgeInsets.only(
                            left: 28
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 12
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Алтайск",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 12
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                  ),
                                  Text(
                                      "Барнаул",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff2e2e33),
                                          fontFamily: "Roboto"

                                      )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ):Container()
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

}