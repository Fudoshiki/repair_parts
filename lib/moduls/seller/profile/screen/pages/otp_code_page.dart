import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/enter_inn_page.dart';

class OtpCodePage extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());
  String day1="";
  String day2="";
  String month1="";
  String month2="";
  String year1="";
  String year2="";
  String year3="";
  String year4="";

  FocusNode focusNodeDay1=new FocusNode();
  FocusNode focusNodeDay2=new FocusNode();
  FocusNode focusNodeMonth1=new FocusNode();
  FocusNode focusNodeMonth2=new FocusNode();
  FocusNode focusNodeYear1=new FocusNode();
  FocusNode focusNodeYear2=new FocusNode();
  FocusNode focusNodeYear3=new FocusNode();
  FocusNode focusNodeYear4=new FocusNode();

  TextEditingController controllerDay1=new TextEditingController();
  TextEditingController controllerDay2=new TextEditingController();
  TextEditingController controllerMonth1=new TextEditingController();
  TextEditingController controllerMonth2=new TextEditingController();
  TextEditingController controllerYear1=new TextEditingController();
  TextEditingController controllerYear2=new TextEditingController();
  TextEditingController controllerYear3=new TextEditingController();
  TextEditingController controllerYear4=new TextEditingController();
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
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeDay1,
                          controller: controllerDay1,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "D",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF).withOpacity(0.63)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                          ),
                          onChanged: (t){
                            if(day1.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(focusNodeDay2);
                              }
                            }
                            day1=controllerDay1.text;

                          },
                        ),
                      ),
                      Container(
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeDay2,
                          controller: controllerDay2,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "D",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF).withOpacity(0.63)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),

                          ),
                          onChanged: (t){
                            if(day2.length==1){
                              if(t.length==0){
                                FocusScope.of(context).requestFocus(focusNodeDay1);
                              }
                            }
                            if(day2.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(focusNodeMonth1);
                              }
                            }
                            day2=controllerDay2.text;

                          },
                        ),
                      ),
                      Container(
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeMonth1,
                          controller: controllerMonth1,
                          onChanged: (t){
                            if(month1.length==1){
                              if(t.length==0){
                                FocusScope.of(context).requestFocus(focusNodeDay2);
                              }
                            }
                            if(month1.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(focusNodeMonth2);
                              }
                            }
                            month1=controllerMonth1.text;

                          },
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "M",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF).withOpacity(0.63)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeMonth2,
                          controller: controllerMonth2,
                          onChanged: (t){
                            if(month2.length==1){
                              if(t.length==0){
                                FocusScope.of(context).requestFocus(focusNodeMonth1);
                              }
                            }
                            if(month2.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(focusNodeYear1);
                              }
                            }
                            month2=controllerMonth2.text;

                          },
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "M",
                            hintStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeYear1,
                          controller: controllerYear1,
                          onChanged: (t){
                            if(year1.length==1){
                              if(t.length==0){
                                FocusScope.of(context).requestFocus(focusNodeMonth2);
                              }
                            }
                            if(year1.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(focusNodeYear2);
                              }
                            }
                            year1=controllerYear1.text;

                          },
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "Y",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF).withOpacity(0.63)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 36,
                        margin: EdgeInsets.only(right: 10),
                        child: TextField(
                          focusNode: focusNodeYear2,
                          controller: controllerYear2,
                          onChanged: (t){
                            if(year2.length==1){
                              if(t.length==0){
                                FocusScope.of(context).requestFocus(focusNodeYear1);
                              }
                            }
                            if(year2.length==0){
                              if(t.length==1){
                                FocusScope.of(context).requestFocus(new FocusNode());
                              }
                            }
                            year2=controllerYear2.text;

                          },
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2E2E33)
                          ),
                          decoration: InputDecoration(
                            hintText: "Y",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF).withOpacity(0.63)
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffC4C4C4),width: 1)
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
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
                        Get.to(EnterInnPage(bottom: false));
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