import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';

class ItemRow extends StatelessWidget{
  dynamic el;

  MainController _mainController =Get.find();
  ItemRow(@required this.el);

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
                  width: Get.width-175,
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
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    bottom: 14
                  ),
                  width: Get.width-170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       height: 30,
                       child:  FlatButton(
                         padding: EdgeInsets.all(0),
                         child: Container(
                           height: 30,
                           width: Get.width-216,
                           decoration: BoxDecoration(
                               color: el['added_backet']?Colors.white:Color(0xffE6332A),
                               border: Border.all(
                                   color: Color(0xffE6332A),
                                   width: 1
                               ),
                               borderRadius: BorderRadius.circular(6)
                           ),
                           child: Center(
                             child: Text(
                               el['added_backet']?"Перейти в корзину":"Добавить в корзину",
                               style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   fontSize: 12,
                                   color: el['added_backet']?Color(0xffE6332A):Colors.white,
                                   fontFamily: "Roboto"
                               ),
                             ),
                           ),
                         ),
                         onPressed: (){

                         },
                       ),
                     ),
                      Container(
                          width: 36,
                          height: 30,
                          child:FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              width: 36,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                      color: el['follow']?Color(0xffE6332A):Color(0xffD6D6D6)
                                  )
                              ),
                              child: Center(
                                child: el['follow']?Image.asset('assets/image/start_act.png',height: 16,):Image.asset("assets/image/start.png",height: 16,),
                              ),
                            ),
                            onPressed: (){

                            },
                          )
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: (){
        Get.forceAppUpdate();
        _mainController.controllerMainPage.jumpToPage(2);
      },
    );
  }

}