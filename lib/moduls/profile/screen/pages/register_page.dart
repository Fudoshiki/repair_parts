import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/profile/controller/profile_controller.dart';

import 'otp_code_page.dart';

class RegisterPage extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());

  RxBool seller=false.obs;

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
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "Регистрация/войти",
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: "Roboto",
                        color: Color(0xff2E2E33),
                        fontWeight: FontWeight.w900,
                        height: 1.5
                    ),
                  ),
                ),
                Container(
                  width: Get.width-40,
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,vertical: 16
                  ),
                  child: Text(
                    "Введите номер телефона, чтобы войти или зарегистрироваться",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: Get.width-40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffF3F3F3)
                  ),
                  height: 30,
                  child: GestureDetector(
                    child: Obx(
                          ()=>Row(
                        children: [
                          Container(
                              height: 30,
                              width: (Get.width-40)/2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:seller.value?Color(0xffF3F3F3): Color(0xffE6332A)
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20
                              ),
                              child: Center(
                                child: Text(
                                  "Покупатель",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontSize: 12,
                                      color:seller.value?Color(0xff717171):Colors.white
                                  ),
                                ),
                              )
                          ),
                          Container(
                              height: 30,
                              width: (Get.width-40)/2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:!seller.value?Color(0xffF3F3F3): Color(0xffE6332A)
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20
                              ),
                              child: Center(
                                child: Text(
                                  "Продавец",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontSize: 12,
                                      color:!seller.value?Color(0xff717171):Colors.white
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      seller.value=!seller.value;
                    },
                  )
                ),
                SizedBox (
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "Номер телефона",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xffD6D6D6)
                    )
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,vertical: 8
                  ),
                  child: TextField(
                    controller: _profileController.number,
                    onChanged: (t){
                      if(t.length>0){
                        _profileController.numberValid.value=true;

                      }else{
                        _profileController.numberValid.value=false;

                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: "+ 7 (___) ___-__-__",
                      hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xff959595),
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400
                      ),
                    ),
                  )
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
                                "Получить код",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto",
                                    fontSize: 16,
                                    color: Colors.white
                                ),
                              ),
                            )
                        ),
                        onPressed: _profileController.numberValid.value?(){
                          _profileController.opacity.value=1;
                        }:(){

                        }
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 48
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
                GestureDetector(
                  child: Container(
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
                  onTap: (){
                    Get.to(OtpCodePage());
                  },
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
                  height: 79,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}