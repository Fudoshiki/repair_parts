import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/profile/controller/profile_controller.dart';

class OtpCodePage extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
              Icons.arrow_back
          ),
          onTap: (){
            Get.back();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: 31
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    height: 50,
                    child: Text(
                      "Код из СМС",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontSize: 14,
                          color: Color(0xff2E2E33)
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffD6D6D6),
                                    width: 1
                                )
                            )
                        ),
                        height: 15,
                        width:36 ,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Obx(
                      ()=>_profileController.opacity.value==1?Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Новый код можно запросить через 00:30",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: "Roboto"
                          ),
                        )
                      ],
                    ),
                  ):Container(),
                ),
                SizedBox(
                  height: 25,
                ),
                Obx(
                      ()=>FlatButton(
                      padding: EdgeInsets.all(0),
                      child: Container(
                          height: 50,
                          width: Get.width-40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: _profileController.numberValid.value? Color(0xffE6332A):Color(0xff959595)
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical:4
                          ),
                          child: Center(
                            child: Text(
                              "Запросить повторный код",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto",
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          )
                      ),
                      onPressed: _profileController.time.value==0?(){
                        _profileController.time.value=1;
                      }:(){

                      }
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