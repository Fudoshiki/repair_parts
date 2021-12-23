import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';

import 'company_ip_screen.dart';
import 'company_oop_screen.dart';
import 'main_data_profile_companies.dart';
import 'main_data_profile_person_data.dart';

class MainDataProfile extends StatefulWidget {
  bool? bottom;

  MainDataProfile({@required this.bottom});

  @override
  State<StatefulWidget> createState() {
   return MainDataProfileState();
  }
}
class MainDataProfileState extends State<MainDataProfile>{
  int index =0;
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  ProfileController _profileController =Get.find();
  var controller =new PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottom!=null?SizedBox(height: 70,
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
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: Column(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      "Основные данные",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          color: Color(0xff2e2e33)
                      ),
                    ),
                    Opacity(
                      child: GestureDetector(
                        child:  Container(
                          width: 19,
                          height: 16,
                          child: Image.asset("assets/image/arrow_left.png"),
                        ),
                        onTap: (){
                          Get.back();
                        },
                      ),
                      opacity: 0,
                    )

                  ],
                )
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffFFB800)
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
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            color: Color(0xff2e2e33)
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 7 (000) 000-00-00",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color: Color(0xff2e2e33)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top:19,
                  left: 20,
                  right: 20,
                  bottom: 14
              ),
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "Личные данные",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: index==0?FontWeight.w600:FontWeight.w400,
                            fontFamily: "Roboto",
                            color:index==0? Color(0xff2e2e33):Color(0xff959595)
                        ),
                      ),
                    ),
                    onTap: (){
                      index=0;
                      controller.jumpToPage(0);
                      Get.forceAppUpdate();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "Организации",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: index==1?FontWeight.w600:FontWeight.w400,
                            fontFamily: "Roboto",
                            color:index==1? Color(0xff2e2e33):Color(0xff959595)
                        ),
                      ),
                    ),
                    onTap: (){
                      index=1;
                      controller.jumpToPage(1);
                      Get.forceAppUpdate();
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                children: [
                  MainDataProfilePersonDataScreen(),
                  MainDataProfileCompaniesScreen()
                ],
              ),
            )
          ],
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());

        },
      )
    );
  }


}