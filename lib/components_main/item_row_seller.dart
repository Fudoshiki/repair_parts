import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/seller/main/screen/pages/product_screen_seller.dart';

class ItemRowSeller extends StatelessWidget{
  dynamic el;

  MainController _mainController =Get.find();
  ItemRowSeller(@required this.el);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0xffE7E7E7)
            )
          )
        ),
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
        ),
        height: 134,
        padding: EdgeInsets.only(
          top: 17
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            el['image'].length==0?
            Container(
              width: 80,
              height: 100,
              margin: EdgeInsets.only(
                  right: 20
              ),
              child: Center(
                child: Container(
                  width: 47,
                  height: 47,
                  child: Image.asset("assets/image/no_image.png"),
                ),
              ),
            )
           : Container(
              width: 80,
              height: 100,
              margin: EdgeInsets.only(
                  right: 20
              ),
              child: Image.asset("assets/image/${el['image'][0]}"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width-150,
                  margin: EdgeInsets.only(
                    bottom: 5
                  ),
                  height: 35,
                  child: Text(
                    "${el['title']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto",
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Container(
                  child: Text(
                    "${el['arcticul']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "${el['brend']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      onTap: (){
        Get.to(ProductScreenSeller(bottom: true,));
      },
    );
  }

}