import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/query/controller/query_controller.dart';

class QueryItemDelete extends StatelessWidget{
  QueryItemController _queryItemController = Get.put(QueryItemController());
  MainController _mainController =Get.find();
  bool? bottom;
  QueryItemDelete({@required this.bottom});
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
          Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20
              ),
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child:  Container(
                      child: Icon(Icons.arrow_back),
                    ),
                    onTap: (){
                      try{
                        _mainController.controllerProfilePage.jumpToPage(3);
                      }catch(e){
                        Get.back();
                      }
                    },
                  )
                ],
              )
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffF3F3F3)
                  ),
                  padding: EdgeInsets.only(
                    left: 18,
                    top: 15,
                    bottom: 18
                  ),
                  margin: EdgeInsets.only(
                    left: 20,right: 20,top: 32
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 18,
                        child: Image.asset("assets/image/trash.png"),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Запрос №1–6 удален",
                        style:  TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"
                        ),
                      )

                    ],
                  ),
                )
              ],
            )
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30
              ),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffE6332A),
                    borderRadius: BorderRadius.circular(
                        6
                    )
                ),
                child: Center(
                  child: Text(
                    "Перейти в личный кабинет",
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
              ),
            ),
            onTap: (){
              _mainController.controllerProfilePage.jumpToPage(0);
            },
          )
        ],
      )
    );
  }

}