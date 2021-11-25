import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';

class NoFavoriteScreen extends StatelessWidget{
  bool? bottom;
  NoFavoriteScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(
          height: 50,
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
                true,
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
                false,
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
                child: Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "У вас нет сохраненных товаров",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,

                          ),
                          SizedBox(height: 16,),
                          Text(
                            "Чтобы добавить товар в Избранное, нажмите",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                                child: Image.asset("assets/image/start.png",color:Color(0xffE6332A)),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "на понравившемся товаре",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              )
                            ],
                          )
                        ],
                      )
                  ),
                )
            )
          ],
        )
    );

  }
  
  
}