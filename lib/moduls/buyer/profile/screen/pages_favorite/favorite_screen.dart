import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';

class FavoriteScreen extends StatelessWidget{
  bool? bottom;
  FavoriteScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  ProfileController profileController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(height: 70,
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
                "bascket_icon.png",
                18,
                text: "Корзина",

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

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 40
                  ),
                  child: Icon(Icons.arrow_back,color: Color(0xff2e2e33),)
              ),
              onTap: (){
                Get.back();
              },
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,

                right: 20,
              ),
              width: Get.width-40,
              padding: EdgeInsets.only(
                bottom: 30
              ),
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1,
                        color: Color(0xffE7E7E7)
                    ),

                  )
              ),
              child: Text(
                "Избранное",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Color(0xff2e2e33),
                    fontFamily: "Roboto"
                ),
              ),
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.only(),
                  children: [
                    ...profileController.dataFovorite.rows!.map((e) => getRowFavorite(e))
                  ],
                )
            )
          ],
        )
    );

  }

  Widget getRowFavorite(favorite){
    return   GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: Color(0xffE7E7E7)
                ),

            )
        ),
        padding: EdgeInsets.only(
            top: 12
        ),
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
          top: 12
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width-160,
                  margin: EdgeInsets.only(
                      bottom: 10
                  ),
                  height: 42,
                  child: Text(
                    "${favorite.name}",
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
                    "Артикул: ${favorite.vendorCode}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                favorite.label=="null"?Container(
                  child: Text(
                    "Бренд: ${favorite.label}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ):Opacity(
                  opacity: 0,
                  child: Container(
                    child: Text(
                      "Бренд: ${favorite.label}",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff767676),
                          fontFamily: "Roboto"
                      ),
                    ),
                  ),
                ) ,
                Container(
                  margin: EdgeInsets.only(
                      top: 13,
                      bottom: 27
                  ),
                  width: Get.width-160,
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
                            width: Get.width-206,
                            decoration: BoxDecoration(
                                color: Color(0xffE6332A),
                                border: Border.all(
                                    color: Color(0xffE6332A),
                                    width: 1
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "Добавить в корзину",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.white,
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
                                      color: Color(0xffE6332A)
                                  )
                              ),
                              child: Center(
                                  child: Image.asset('assets/image/start_act.png',height: 16,)
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

      },
    );

  }


}