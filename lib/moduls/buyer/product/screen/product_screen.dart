import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/loader.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/product/controller/product_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ProductScreen extends StatelessWidget{
  ProductController _productController = Get.put(ProductController());
  ProfileController profileController =Get.find();
  BackendController backendController = Get.find();
  bool? bottom;

  MainController mainController =Get.find();
  ProductScreen({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: _productController.dataProductById==null?Loader():Column(
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
                    Get.back();
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 36,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: profileController.dataProfile!.user!.favoriteProducts!.where((element){
                              return element.productId==_productController.dataProductById!.product!.id;
                            }).length!=0?Color(0xffE6332A):Color(0xffD6D6D6)
                        )
                    ),
                    child: Center(
                      child: profileController.dataProfile!.user!.favoriteProducts!.where((element){
                        return element.productId==_productController.dataProductById!.product!.id;
                      }).length!=0?Image.asset('assets/image/start_act.png',height: 16,):Image.asset("assets/image/start.png",height: 16,),
                    ),
                  ),
                  onTap: ()async{
                    if(profileController.dataProfile!.user!.favoriteProducts!.where((element){
                      return element.productId==_productController.dataProductById!.product!.id;
                    }).length!=0){
                      var data=await backendController.backend.deleteFavoriteProduct(_productController.dataProductById!.product!.id);
                      if(data!=null){
                        profileController.dataProfile=await backendController.backend.requestGetUser();
                        Get.forceAppUpdate();
                      }
                    }else{
                      var data=await backendController.backend.addToFavoriteProduct(_productController.dataProductById!.product!.id);
                      if(data!=null){
                        profileController.dataProfile=await backendController.backend.requestGetUser();
                        Get.forceAppUpdate();
                      }
                      //addToFavoriteProduct
                    }
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Preview
                _productController.dataProductById!.product!.preview!=null?Container(
                  margin: EdgeInsets.only(
                    bottom: 26
                  ),
                  width: Get.width,
                  height: 280,
                  child: Image.network("${_productController.dataProductById!.product!.preview}"),
                ):Container( width: Get.width,
                  height: 280,
                child: Center(
                  child: Image.asset("assets/image/no_image.png",height: 100,),
                ),),
                // _productController.dataProductById!.product!.preview!=null?Obx(
                //     ()=>Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         ...List.generate(_productController.product['image'].length,
                //                 (el){
                //               return Container(
                //                 margin: EdgeInsets.symmetric(
                //                     horizontal: 2
                //                 ),
                //                 width: 8,
                //                 height: 8,
                //                 decoration: BoxDecoration(
                //                     shape: BoxShape.circle,
                //                     color:_productController.countIndex.value==el?Color(0xffE6332A):Color(0xffE7E7E7)
                //                 ),
                //               );
                //             }
                //         )
                //       ],
                //     ),
                // ):Container(),
                SizedBox(
                  height: 10,
                ),
                //Title
                Container(
                  width: Get.width-140,
                  height: 40,
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Text(
                    "${_productController.dataProductById!.product!.name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff2E2E33),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                //Articul
                Container(
                  padding: EdgeInsets.only(
                      top: 15,
                      bottom: 5
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Text(
                    "Артикул: ${_productController.dataProductById!.product!.vendorCode}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff767676),
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
                //Brand
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    "Бренд: ${_productController.dataProductById!.product!.autoBrands!.map((e) => "${e.label} ").toString().split('(')[1].split(")")[0]}",
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
                      bottom: 9,
                      top: 9
                  ),
                  width: Get.width-40,
                  height: 1,
                  color: Color(0xffE7E7E7),
                ),
                //Description
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
                        "--//--",
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
                //Options
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
                                      "${_productController.dataProductById!.product!.length!=null?"${_productController.dataProductById!.product!.length}":"-"}",
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
                                      "${_productController.dataProductById!.product!.width!=null?"${_productController.dataProductById!.product!.width}":"-"}",
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
                                      "${_productController.dataProductById!.product!.height!=null?"${_productController.dataProductById!.product!.height}":"-"}",
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
                                      "${_productController.dataProductById!.product!.weight!=null?"${_productController.dataProductById!.product!.weight}":"-"}",
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
                //Recommended product

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
                  height: 155,
                  margin: EdgeInsets.only(
                      bottom: 11
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    scrollDirection: Axis.horizontal,
                    itemCount: _productController.dataProductById!.recommendedProducts!.length,
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
                             width:93,
                             height: 100,
                             child:  Center(
                               child: Container(
                                 width: 50,
                                 height: 50,
                                 child: Image.asset("assets/image/no_image.png",height: 40,width: 40,),
                               ),
                             ),
                           ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: Text(
                                "${_productController.dataProductById!.recommendedProducts![i].name}",
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
                              "${_productController.dataProductById!.recommendedProducts![i].vendorCode}",
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
          GestureDetector(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: Get.width-40,
              decoration: BoxDecoration(
                  color: profileController.dataProfile!.user!.cartProducts!.where((element){
                    return element.productId==_productController.dataProductById!.product!.id;
                  }).length!=0?Colors.white:Color(0xffE6332A),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      color: Color(0xffE6332A),
                      width: 1
                  )
              ),
              child: Center(
                child: Text(
                  profileController.dataProfile!.user!.cartProducts!.where((element){
                    return element.productId==_productController.dataProductById!.product!.id;
                  }).length!=0?"Перейти в корзину":"Добавить в корзину",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: profileController.dataProfile!.user!.cartProducts!.where((element){
                        return element.productId==_productController.dataProductById!.product!.id;
                      }).length!=0?Color(0xffE6332A):Colors.white,
                      fontFamily: "Roboto"
                  ),
                ),
              ),
            ),
            onTap: ()async{
              if(profileController.dataProfile!.user!.cartProducts!.where((element){
                return element.productId==_productController.dataProductById!.product!.id;
              }).length!=0){
                // var data=await backendController.backend.deleteCartProduct(product.id);
                // if(data!=null){
                //   _profileController.dataProfile=await backendController.backend.requestGetUser();
                //   Get.forceAppUpdate();
                // }
                Get.back();
                mainController.onIndexChanged(2);
              }else{
                var data=await backendController.backend.addToCartProduct(_productController.dataProductById!.product!.id);
                if(data!=null){
                  profileController.dataProfile=await backendController.backend.requestGetUser();
                  List prod=[];
                  profileController.dataProfile!.user!.cartProducts!.forEach((e) {
                    print("productswwwwww${e.id}+,");
                    prod.add(jsonEncode(e.toJson()));
                  });
                  await backendController.backend.getProductCartProducts(prod);
                  profileController.dataCartProducts=backendController.backend.dataCartProducts;

                  Get.forceAppUpdate();
                }
                //addToFavoriteProduct
              }
            },
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
              fontWeight: FontWeight.w600,
              color: Color(0xff2E2E33),
              fontFamily: "Roboto"
            ),
          )
        ],
      ),
    );
  }
}