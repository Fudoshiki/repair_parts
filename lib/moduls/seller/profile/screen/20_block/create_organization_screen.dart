import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/components_main/text_field_component.dart';
import 'package:repair_parts/moduls/seller/profile/screen/register_oop_inn/no_registred_org2.dart';

class CreateOrganizationScreen extends StatelessWidget{


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
                      top: 20
                  ),
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:  Container(
                          child: Icon(Icons.arrow_back),
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
                            "Добавить организацию",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Пожалуйста, заполните все необходимые поля",
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
                  )
              ),
              Expanded(
                  child:  Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 27
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
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 50,
                                width: Get.width-40,
                                child: TextFieldCustom(
                                  "ИНН","",
                                )
                            ),
                          ]))



              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
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
                  Get.to(NORegistredOrgScreen2());
                },
              )
              //
            ]
        )

    );
  }

}