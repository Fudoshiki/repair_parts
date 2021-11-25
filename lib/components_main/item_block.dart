import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemBlock extends StatelessWidget{
  dynamic el;
  ItemBlock(@required this.el);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Color(0xffE7E7E7),
                width: 1
              )
            ),
            height: 177,
            width: (Get.width-60)/2,
            child: Stack(
              children: [
                el['image'].length!=0? Center(
                  child: Container(
                    child: Image.asset("assets/image/${el['image'][0]}"),
                  ),
                ):
                Center(
                  child: Container(
                    width: 47,
                    height: 47,
                    child: Image.asset("assets/image/no_image.png"),
                  ),
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                      width: 36,
                      height: 30,
                      color: Colors.white,
                      child:FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          width: 36,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                  ),
                )
              ],
            )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width/2,
                margin: EdgeInsets.only(
                    bottom: 10,top: 6
                ),
                child: Text(
                  "${el['title']}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff2E2E33),
                      fontFamily: "Roboto"
                  ),
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
                height: 30,
                margin: EdgeInsets.only(top: 12),
                child:  FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 30,
                    width: (Get.width-60)/2,
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
            ],
          )

        ],
      ),
    );
  }

}