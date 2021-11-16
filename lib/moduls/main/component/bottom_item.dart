import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem {
  showItem(
      bool pageActive,
      String type1,
      double sizeIcon, {
       @required String? text,
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
                    SizedBox(
                      height: 6.5,
                    ),
                     Image.asset(
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
                        fontWeight: FontWeight.w500,
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
