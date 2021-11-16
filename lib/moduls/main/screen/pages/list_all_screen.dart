import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/home/screen/home_screen.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/search_page.dart';
import 'package:repair_parts/moduls/profile/screen/pages/register_page.dart';

class ListAllScreen extends StatelessWidget{
  MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1
                )
              ),
              height: 60,
              width: Get.width,
              child: Center(
                child: Text(
                    "Screens 1"
                ),
              )
            ),
            onTap:(){
              Get.to(HomeScreen());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )
                ),
                height: 60,
                width: Get.width,
                child: Center(
                  child: Text(
                      "Screens 2,7,10,10a,10b"
                  ),
                )
            ),
            onTap:(){
             Get.to(CatalogScreen());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )
                ),
                height: 60,
                width: Get.width,
                child: Center(
                  child: Text(
                      "Screens 66,67,68"
                  ),
                )
            ),
            onTap:(){
              Get.to(RegisterPage());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )
                ),
                height: 60,
                width: Get.width,
                child: Center(
                  child: Text(
                      "Screens 21,18,19,22"
                  ),
                )
            ),
            onTap:(){
              Get.to(SearchPage());
            },
          ),
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )
                ),
                height: 60,
                width: Get.width,
                child: Center(
                  child: Text(
                      "Screens 16,16a,17a,17,16b"
                  ),
                )
            ),
            onTap:(){
              Get.to(ListItems("КАМАЗ"));
            },
          )
        ],
      ),
    );
  }

}