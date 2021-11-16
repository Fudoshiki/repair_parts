import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';

class ChooseSeller extends StatelessWidget{
  MainController mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                top: 40,
                left: 20,
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
                  padding: EdgeInsets.only(
                    bottom: 5
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color(0xffE7E7E7),
                          width: 1
                      )
                    )
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
                          "Всегда отправлять только выбранным продавцам"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 26
                  ),
                  padding: EdgeInsets.only(
                      bottom: 16
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
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
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Выбрать всех"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 12
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
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Продавец 1"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 12
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
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Продавец 2"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 12
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
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Продавец 3"
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 12
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
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Продавец 4"
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    height: 30,
                    width: (Get.width-52)/2,
                    decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: Text(
                        "Сохранить",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    mainController.controllerMainPage.jumpToPage(1);
                  },
                ),
                Container(
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xffE6332A),
                    )
                  ),
                  height: 30,
                  width: (Get.width-52)/2,
                  child: Center(
                    child: Text(
                        "Сбросить выбор",
                      style: TextStyle(
                          color: Color(0xffE6332A),
                          fontSize: 12,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}