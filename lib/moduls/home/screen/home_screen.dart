import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget{
  HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end:Alignment.topCenter,
            colors: [
              Color(0xffE6332A),
              Color(0xffC00000),
            ],
            tileMode: TileMode.decal
          ),
          image: DecorationImage(
            image: AssetImage(
                "assets/image/Слой 22 1.png"
            ),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 92,
                child:
                Image.asset("assets/image/Group 24.png"),
              ),
              Text("сервис уникальных скидок",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}