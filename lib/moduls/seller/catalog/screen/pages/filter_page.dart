import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';

class FilterPage extends StatelessWidget{

  CatalogController catalogController =Get.put(
    CatalogController()
  );

  var open1=false;
  var open2=false;
  var open3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              child: Icon(
                  Icons.arrow_back
              ),
              onTap: (){
                Get.back();
              },
            ),
            title: Text(
              "Фильтры",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",
                  color: Color(0xff2E2E33)
              ),
            ),
            actions: [
             Center(
               child:  Text(
                   "Отменить",
                 style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w500,
                     fontFamily: "Roboto",
                     color: Color(0xff2E2E33)
                 ),
               ),
             ),
              Container(
                width: 20,
              )
            ],
            elevation: 0,
          ),
          Container(
            height: 24,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 4,
                    horizontal: 8
                  ),
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xffE6332A),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ось передняя",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 8,
                        height: 8,
                        child: Image.asset("assets/image/close.png"),
                      )
                    ],
                  ),
                ),
               Container(
                  margin: EdgeInsets.only(
                      left: 10
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8
                  ),
                  height: 24,
                  decoration: BoxDecoration(
                      color: Color(0xffE6332A),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ось задняя",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 8,
                        height: 8,
                        child: Image.asset("assets/image/close.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 10
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8
                  ),
                  height: 24,
                  decoration: BoxDecoration(
                      color: Color(0xffE6332A),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Гусеницы и катки",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 8,
                        height: 8,
                        child: Image.asset("assets/image/close.png"),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Obx(
                    ()=>Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20
                      ),
                      padding: EdgeInsets.only(
                          bottom: 14
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
                          GestureDetector(
                            child: Container(
                              width: (Get.width-58)/2,
                              height: 30,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:catalogController.isBlock.value? Color(0xffD6D6D6):Color(0xffE6332A)
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color:catalogController.isBlock.value? Color(0xffffffff):Color(0xffFFE9E8),
                              ),
                              child: Container(
                                width: 18,
                                height: 19,
                                child: Image.asset("assets/image/block.png",color: catalogController.isBlock.value? Color(0xffD6D6D6):Color(0xffE6332A),),
                              ),
                            ),
                            onTap: (){
                              catalogController.isBlock.value=false;
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              width: (Get.width-58)/2,
                              height: 30,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:!catalogController.isBlock.value? Color(0xffD6D6D6):Color(0xffE6332A)
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color:!catalogController.isBlock.value? Color(0xffffffff):Color(0xffFFE9E8),
                              ),
                              child: Container(
                                height: 16,
                                width: 24,
                                child: Image.asset("assets/image/row.png",color: !catalogController.isBlock.value? Color(0xffD6D6D6):Color(0xffE6332A),),
                              ),
                            ),
                            onTap: (){
                              catalogController.isBlock.value=true;
                            },
                          )
                        ],
                      ),
                    )
                ),
                ...catalogController.filterItems.map((e){
                  return FilterItems(e);
                })
              ],
            ),
          )
        ],
      ),
    );

  }

}