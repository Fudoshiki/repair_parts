import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/list_all_screen.dart';
import 'package:repair_parts/routes/app_pages.dart';

class ProfilePage extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;
  ProfilePage({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffDA6468),
                                borderRadius: BorderRadius.circular(
                                    5
                                )
                            ),
                            child: Image.asset("assets/image/profile.png"),
                          ),
                          onTap:(){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                double width = MediaQuery.of(context).size.width;
                                double height = MediaQuery.of(context).size.height;
                                return AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    contentPadding: EdgeInsets.zero,
                                    elevation: 0.0,
                                    // title: Center(child: Text("Evaluation our APP")),
                                    content: Container(
                                      width: Get.width-26,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: Get.width-26,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                const BorderRadius.all(Radius.circular(10.0))),
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    height: 50,
                                                    child: Center(
                                                      child: Text(
                                                        "Сделать фото",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Roboto",
                                                            color: Color(0xff2E2E33)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: ()async{
                                                    final ImagePicker _picker = ImagePicker();
                                                    final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                    if(
                                                    pickedFile!=null
                                                    ){

                                                    }
                                                    Get.back();
                                                  },
                                                ),
                                                Container(
                                                  width: Get.width,
                                                  height: 1,
                                                  color: Color(0xffCBCBCB),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    height: 50,
                                                    child: Center(
                                                      child: Text(
                                                        "Выбрать из галереи",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Roboto",
                                                            color: Color(0xff2E2E33)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: ()async{
                                                    final ImagePicker _picker = ImagePicker();
                                                    final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                    if(
                                                    pickedFile!=null
                                                    ){

                                                    }
                                                    Get.back();
                                                  },
                                                ),
                                                Container(
                                                  width: Get.width,
                                                  height: 1,
                                                  color: Color(0xffCBCBCB),
                                                ),

                                                GestureDetector(
                                                  child: Container(
                                                    height: 50,
                                                    child: Center(
                                                      child: Text(
                                                        "Удалить фотографию",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Roboto",
                                                            color: Color(0xff2E2E33)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: ()async{

                                                    Get.back();
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: Get.width-26,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                const BorderRadius.all(Radius.circular(10.0))),
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    height: 50,
                                                    child: Center(
                                                      child: Text(
                                                        "Отмена",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Roboto",
                                                            color: Color(0xff2E2E33)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: (){
                                                    Get.back();
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    )
                                );
                              },
                            );
                          }
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16
                        ),
                        child: Text(
                          "Иванов Иван Иванович",
                          style: TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffFFE9E8)
                        ),
                        height: 30,
                        width: (Get.width-54)/2,
                        child: Center(
                          child: Text(
                            "Покупатель",
                            style: TextStyle(
                                color: Color(0xffE6332A),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffF3F3F3)
                          ),
                          height: 30,
                          width: (Get.width-54)/2,
                          child: Center(
                            child: Text(
                              "Продавец",
                              style: TextStyle(
                                  color: Color(0xffE6332A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Get.toNamed(Routes.MAINSELLER);
                        }
                      )
                    ],
                  ),
                ),

                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/zap.png"),
                            ),
                            Text(
                              "Запросы",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 8,
                          height: 14,
                          child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                        )

                      ],
                    ),
                  ),
                  onTap: (){
                    _mainController.controllerProfilePage.jumpToPage(1);
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/orde.png"),
                            ),
                            Text(
                              "Заказы",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: 8
                                ),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffE6332A)
                                ),
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                        Container(
                          width: 8,
                          height: 14,
                          child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                        )

                      ],
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/hist.png"),
                          ),
                          Text(
                            "История заказов",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/back.png"),
                          ),
                          Text(
                            "Возврат/обмен",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/pencil.png"),
                          ),
                          Text(
                            "Основные данные",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  padding: EdgeInsets.only(
                      bottom: 21,left: 14,
                      top: 21
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffE7E7E7),
                              width: 1
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(
                                right: 20
                            ),
                            child: Image.asset("assets/image/faw.png"),
                          ),
                          Text(
                            "Избранное",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 8,
                        height: 14,
                        child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                      )

                    ],
                  ),
                ),

                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    child: GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(
                                    right: 20
                                ),
                                child: Image.asset("assets/image/inf.png"),
                              ),
                              Text(
                                "Информация",
                                style: TextStyle(
                                    color: Color(0xff2E2E33),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: (){
                        Get.to(ListAllScreen());
                      },
                    )
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    padding: EdgeInsets.only(
                        bottom: 21,left: 14,
                        top: 21
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffE7E7E7),
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(
                                  right: 20
                              ),
                              child: Image.asset("assets/image/exit.png"),
                            ),
                            Text(
                              "Выйти",
                              style: TextStyle(
                                  color: Color(0xff2E2E33),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  onTap: (){
                    Get.dialog(
                      Center(
                        child: Container(
                          height: 141,
                          width: Get.width-40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                          ),
                          child:Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 5,right: 5),
                                  height: 90,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffCBCBCB),
                                              width: 1
                                          )
                                      )
                                  ),
                                  child: Scaffold(
                                    body: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Обратите внимание",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                              "Вы уверены, что хотите выйти?",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                height: 50,
                                padding: EdgeInsets.only(left: 5,right: 5),

                                child: Scaffold(
                                  body: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      color: Color(0xffCBCBCB),
                                                      width: 1
                                                  )
                                              )
                                          ),
                                          width: (Get.width-50)/2,
                                          child: Center(
                                            child: Text(
                                              "Выйти",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xffE6332A)
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Get.back();
                                        },
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: (Get.width-50)/2,
                                          child: Center(
                                            child: Text(
                                              "Отмена",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Roboto",
                                                  color: Color(0xff2e2e33)
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Get.back();
                                        },
                                      )

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),

              ],
            ),
          )
        ],
      ),
    );
  }


}