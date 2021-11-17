import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E2E33),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onTap: (){
                    Get.back();
                  },
                ),
                GestureDetector(
                    child: Container(
                      height: 3,
                      width: 17,
                      child: Image.asset("assets/image/menu.png"),
                    )
                )
              ],
            ),
          ),
          Container(
            width: Get.width,
            child: Center(
              child: Container(
                width: Get.width,
                child: Image.asset("assets/image/conector.png"),
              )
            ),
          )
        ],
      )
    );
  }

}