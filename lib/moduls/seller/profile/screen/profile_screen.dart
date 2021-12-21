import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/seller/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/seller/profile/screen/pages/register_page.dart';

class ProfileScreenSeller extends StatelessWidget{
  ProfileControllerSeller _profileControllerSeller =Get.put(ProfileControllerSeller());
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  ProfileScreenSeller({@required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom!=null?         SizedBox(height: 70,


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

      body: _profileControllerSeller.auth
          ?ProfilePageSeller()
          :RegisterPageSeller(),
    );
  }

}