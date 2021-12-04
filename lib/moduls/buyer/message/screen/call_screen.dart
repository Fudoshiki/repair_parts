import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,top: 40
            ),
            height: 40,
            decoration: BoxDecoration(
              border:Border(
                bottom: BorderSide(
                  color: Color(0xffE7E7E7),
                  width: 1
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 18,
                  height: 8,
                  child: Image.asset("assets/image/arrow_down.png",fit: BoxFit.fill,),
                ),
                Text(
                    "Имя продавца",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2e2e33),
                      fontFamily: "Roboto"
                  ),
                ),
                Opacity(
                  child: Container(
                    width: 18,
                    height: 8,
                    child: Image.asset("assets/image/arrow_down.png",fit: BoxFit.fill,),
                  ),
                  opacity: 0,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
            ),
            height: 40,
            // decoration: BoxDecoration(
            //     border:Border(
            //         bottom: BorderSide(
            //             color: Color(0xffE7E7E7),
            //             width: 1
            //         )
            //     )
            // ),
            child: Center(
              child: Text(
                "02:05:56",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff959595),
                    fontFamily: "Roboto"
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset("assets/image/photo_call.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                    right: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 38,
                      right: 38
                    ),
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/image/sound.png",),
                        Image.asset("assets/image/off_mic.png",),
                        Image.asset("assets/image/finish_call.png",),

                      ],
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