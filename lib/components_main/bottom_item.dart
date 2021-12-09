import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem {
  showItem(
      bool pageActive,
      String type1,
      double sizeIcon, {
       @required String? text,
        bool? circle
      }) {
    return BottomNavigationBarItem(
      icon: Center(
        child: new Stack(
          children: <Widget>[
            Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    circle==null? SizedBox(
                      height: 6.5,
                    ):SizedBox(
                      height: 2
                    ),
                    circle!=null?
                     Container(
                       height: 24,
                       width: 26,
                       child: Stack(
                         children: [
                           Positioned(
                             bottom: 0,
                             left: 0,
                             child: Image.asset(
                               'assets/image/$type1',color: pageActive? Color(0xffE6332A):Color(0xff959595),
                               height: sizeIcon,
                             ),
                           ),
                           Positioned(
                             top: 0,
                             right: 0,
                             child: Container(
                               width: 14,
                               height: 14,
                               padding: EdgeInsets.only(
                                 left: 1,
                                 top: 1
                               ),
                               decoration: BoxDecoration(
                                 border: Border.all(
                                   color: Colors.white,
                                   width: 1
                                 ),
                                 shape: BoxShape.circle,
                                 color: Color(0xffE6332A)
                               ),
                               child: Center(
                                 child: Text(
                                   "3",
                                   style: TextStyle(
                                     fontSize: 9,
                                     fontWeight: FontWeight.w400,
                                     fontFamily: "Roboto",
                                     color: Colors.white,
                                     height: 1,
                                     letterSpacing: 1
                                   ),
                                 ),
                               ),
                             ),
                           )
                         ],
                       ),
                     ):Image.asset(
                      'assets/image/$type1',color: pageActive? Color(0xffE6332A):Color(0xff959595),
                      height: sizeIcon,
                    ),
                    SizedBox(
                      height: 7
                    ),
                    text != null
                        ? Text(
                      text,
                      style: TextStyle(
                        color:  pageActive? Color(0xffE6332A):Color(0xff959595),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"

                      ),
                    )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
