import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/product/controller/product_controller.dart';

class ProductScreen extends StatelessWidget{


  ProductController _productController = Get.put(ProductController());
  CatalogController _catalogController = Get.find();
  MainController _mainController =Get.find();
  bool? bottom;
  ProductScreen({@required this.bottom});
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

      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff2E2E33),
                  ),
                  onTap: (){
                    try{
                      _mainController.controllerMainPage.jumpToPage(1);
                    }catch(e){
                      Get.back();
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 36,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: _productController.product!['follow']?Color(0xffE6332A):Color(0xffD6D6D6)
                        )
                    ),
                    child: Center(
                      child: _productController.product['follow']?Image.asset('assets/image/start_act.png',height: 16,):Image.asset("assets/image/start.png",height: 16,),
                    ),
                  ),
                  onTap: (){

                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _productController.product['image'].length!=0?Container(
                  margin: EdgeInsets.only(
                    bottom: 26
                  ),
                  width: Get.width,
                  height: 280,
                  child: PageView.builder(
                    controller: _productController.pageController,
                    onPageChanged: _productController.onPageChanged,
                    itemCount: _productController.product['image'].length,
                    itemBuilder: (c,i){
                      return Image.asset("assets/image/${
                          _productController.product['image'][i]
                      }");
                    },
                  ),
                ):Container(),
                _productController.product['image'].length!=0?Obx(
                    ()=>Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(_productController.product['image'].length,
                                (el){
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 2
                                ),
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:_productController.countIndex.value==el?Color(0xffE6332A):Color(0xffE7E7E7)
                                ),
                              );
                            }
                        )
                      ],
                    ),
                ):Container(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width-140,
                  height: 40,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "${_productController.product['title']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 5
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Text(
                    "${_productController.product['arcticul']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                  ),
                  child: Text(
                    "${_productController.product['brend']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 21,
                      top: 21
                  ),
                  width: Get.width-40,
                  height: 1,
                  color: Color(0xffE7E7E7),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  margin: EdgeInsets.only(
                    bottom: 16
                  ),
                  width: Get.width-40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0xff2E2E33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      Text(
                        "${_productController.product['description']}",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff2E2E33),
                            fontFamily: "Roboto",
                          height: 1.7
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  margin: EdgeInsets.only(
                      bottom: 9
                  ),
                  width: Get.width-40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Характеристики",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0xff2E2E33),
                            fontFamily: "Roboto"
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            width: (Get.width-40)/2,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Длина, мм: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    ),
                                    Text(
                                      "${_productController.product['length']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff2E2E33),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Ширина, мм: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    ),
                                    Text(
                                      "${_productController.product['width']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff2E2E33),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                          Container(
                            width: (Get.width-40)/2,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Высота, мм: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    ),
                                    Text(
                                      "${_productController.product['height']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff2E2E33),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Вес, кг: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    ),
                                    Text(
                                      "${_productController.product['size']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff2E2E33),
                                          fontFamily: "Roboto",
                                          height: 1.7
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 9,
                    bottom: 19
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "С этим товаром покупают",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: 180,
                  margin: EdgeInsets.only(
                    bottom: 11
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _catalogController.array.length,
                    itemBuilder: (c,i){
                      return Container(
                        width: 93,
                        margin: EdgeInsets.only(
                          left: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 93,
                              height: 100,
                              padding: EdgeInsets.all(20),
                              child: Image.asset("assets/image/no_image.png"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: Text(
                                  "${_catalogController.array[i]['title']}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xff2E2E33),
                                    fontFamily: "Roboto"
                                ),
                              ),
                            ),
                            Text(
                                "${_catalogController.array[i]['arcticul']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xff717171),
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            width: Get.width-40,
            decoration: BoxDecoration(
                color: _productController.product['added_backet']?Colors.white:Color(0xffE6332A),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Color(0xffE6332A),
                width: 1
              )
            ),
            child: Center(
              child: Text(
                  "Добавить в корзину",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: _productController.product['added_backet']?Color(0xffE6332A):Colors.white,
                    fontFamily: "Roboto"
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getCalogRow(image,title){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5
      ),
      decoration: BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(6)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 11
      ),
      height: 60,
      child: Row(
        children: [
          Container(
            width: 36,
            height: 20,
            child: Image.asset("assets/image/$image"),
          ),
          SizedBox(
            width: 18,
          ),
          Text(
            "$title",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff2E2E33),
              fontFamily: "Roboto"
            ),
          )
        ],
      ),
    );
  }
}