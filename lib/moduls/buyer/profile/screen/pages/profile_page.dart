import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/main/screen/pages/list_all_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_history_orders/history_orders.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_history_orders/no_history_order.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_orders/no_order_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_orders/order_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_queries/query_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_favorite/favorite_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_favorite/no_favorites_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_information/information_screen.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_main_data/main_data_profile.dart';
import 'package:repair_parts/moduls/buyer/profile/screen/rows_profile_pages/pages_refund_exchnage/history_reset_obmen_orders.dart';
import 'package:repair_parts/routes/app_pages.dart';

import '../rows_profile_pages/pages_queries/no_query_screen.dart';

class ProfilePage extends StatelessWidget{
  MainController _mainController =Get.find();
  bool? bottom;
  ProfilePage({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  ProfileController _profileController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottom!=null?         SizedBox(height: 70,


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
              text: "??????????????",
            ),
            _bottomNavigationitem.showItem(
              false,
              "orders_icon.png",
              18,
              text: "????????????",
            ),
            _bottomNavigationitem.showItem(
              false,
              "bascket_icon.png",
              18,
              text: "??????????????",

            ),
            _bottomNavigationitem.showItem(
              false,
              "message_icon.png",
              18,
              text: "??????????????",

            ),
            _bottomNavigationitem.showItem(
              true,
              "profile_icon.png",
              18,
              text: "??????????????",

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
                                                        "?????????????? ????????",
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
                                                        "?????????????? ???? ??????????????",
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
                                                        "?????????????? ????????????????????",
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
                                                        "????????????",
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
                        width: Get.width-96,
                        margin: EdgeInsets.only(
                          left: 16
                        ),
                        child: Text(
                         "${ _profileController.dataProfile!.user!.lastname!="null"
                             ?"${_profileController.dataProfile!.user!.lastname} ":""}"+
                              "${_profileController.dataProfile!.user!.firstname!="null"
                                  ?"${_profileController.dataProfile!.user!.firstname} ":""}"+
                              "${_profileController.dataProfile!.user!.firstname!="null"
                                  ?"${_profileController.dataProfile!.user!.middlename}":""}"
                              ,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                            "????????????????????",
                            style: TextStyle(
                                color: Color(0xffE6332A),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
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
                              "????????????????",
                              style: TextStyle(
                                  color: Color(0xffE6332A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
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

                getRowProfilePage(
                  icon: "zap",
                  text: "??????????????",
                  arrow: true,
                  onTap: (){
                    Get.to(()=>_profileController.dataOrderRequest.count==0?NoQueryScreen(bottom: true,):QueryScreen(bottom: true,));
                  }
                ),
                getRowProfilePage(
                    icon: "orde",
                    text: "????????????",
                    arrow: true,
                    onTap: (){
                      Get.to(()=>_profileController.dataOrders.count==0?NoOrderScreen(bottom: true,):OrderScreen(bottom: true,));
                    }
                ),
                getRowProfilePage(
                    icon: "hist",
                    text: "?????????????? ??????????????",
                    arrow: true,
                    onTap: (){
                      Get.to(()=>_profileController.dataHistoryOrder.length==0?NoHistoryOrderScreen():HistoryOrdersScreen());
                    }
                ),
                getRowProfilePage(
                    icon: "back",
                    text: "??????????????/??????????",
                    arrow: true,
                    onTap: (){
                      Get.to(()=>HistoryResetObmenOrders(bottom: true));

                    }
                ),
                getRowProfilePage(
                    icon: "pencil",
                    text: "???????????????? ????????????",
                    arrow: true,
                    onTap: (){
                      Get.to(()=>MainDataProfile(bottom: true,));
                    }
                ),
                getRowProfilePage(
                    icon: "faw",
                    text: "??????????????????",
                    arrow: true,
                    onTap: (){
                      Get.to(()=>_profileController.dataFovorite.rows!.length==0?NoFavoriteScreen(bottom: true,):FavoriteScreen(bottom: true,));
                    }
                ),

                getRowProfilePage(
                    icon: "inf",
                    text: "????????????????????",
                    arrow: false,
                    onTap: (){
                      Get.to(()=>InformationScreen(bottom:true));

                    }
                ),
                getRowProfilePage(
                    icon: "exit",
                    text: "??????????",
                    arrow: false,
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
                                                "???????????????? ????????????????",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Roboto",
                                                    color: Color(0xff2e2e33)
                                                ),
                                              ),
                                              SizedBox(height: 8,),
                                              Text(
                                                "???? ??????????????, ?????? ???????????? ???????????",
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
                                                "??????????",
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
                                            _profileController.exit();
                                          },
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            width: (Get.width-50)/2,
                                            child: Center(
                                              child: Text(
                                                "????????????",
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
                    }
                ),





              ],
            ),
          )
        ],
      ),
    );
  }
  Widget getRowProfilePage({
     icon, text,arrow, onTap
  }){
    return GestureDetector(
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
                  child: Image.asset("assets/image/${icon}.png"),
                ),
                Text(
                  "$text",
                  style: TextStyle(
                      color: Color(0xff2E2E33),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"
                  ),
                ),
              ],
            ),
           arrow? Container(
              width: 8,
              height: 14,
              child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
            ):Container()

          ],
        ),
      ),
      onTap: onTap,
    );
  }


}