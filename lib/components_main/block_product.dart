import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/models/rows_products.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class BlockProduct extends StatelessWidget{
  RowsProducts product;

  BlockProduct(this.product);
  ProfileController _profileController=Get.find();
  BackendController backendController=Get.find();
  MainController mainController=Get.find();

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
                product.preview!=null? Center(
                  child: Container(
                    child: Image.network("${product.preview}"),
                  ),
                ):
                Center(
                  child: Container(
                    width: 47,
                    height: 47,
                    child:  Image.asset("assets/image/no_image.png"),
                  ),
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
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
                                  color: _profileController.dataProfile!.user!.favoriteProducts!.where((element){
                                    return element.productId==product.id;
                                  }).length!=0?Color(0xffE6332A):Color(0xffD6D6D6)
                              )
                          ),
                          child: Center(
                            child: _profileController.dataProfile!.user!.favoriteProducts!.where((element){
                              return element.productId==product.id;
                            }).length!=0?Image.asset('assets/image/start_act.png',height: 16,):Image.asset("assets/image/start.png",height: 16,),
                          ),
                        ),
                        onPressed: ()async{
                          if(_profileController.dataProfile!.user!.favoriteProducts!.where((element){
                            return element.productId==product.id;
                          }).length!=0){
                            var data=await backendController.backend.deleteFavoriteProduct(product.id);
                            if(data!=null){
                              _profileController.dataProfile=await backendController.backend.requestGetUser();
                              Get.forceAppUpdate();
                            }
                          }else{
                            var data=await backendController.backend.addToFavoriteProduct(product.id);
                            if(data!=null){
                              _profileController.dataProfile=await backendController.backend.requestGetUser();
                              Get.forceAppUpdate();
                            }
                            //addToFavoriteProduct
                          }
                        },
                      )
                  )
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
                  "${product.name}",
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
                  "Артикул: ${product.vendorCode}",
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
                  "",
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
                        color: _profileController.dataProfile!.user!.cartProducts!.where((element){
                          return element.productId==product.id;
                        }).length!=0?Colors.white:Color(0xffE6332A),
                        border: Border.all(
                            color: Color(0xffE6332A),
                            width: 1
                        ),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: Text(
                        _profileController.dataProfile!.user!.cartProducts!.where((element){
                          return element.productId==product.id;
                        }).length!=0?"Перейти в корзину":"Добавить в корзину",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color:_profileController.dataProfile!.user!.cartProducts!.where((element){
                              return element.productId==product.id;
                            }).length!=0?Color(0xffE6332A):Colors.white,
                            fontFamily: "Roboto"
                        ),
                      ),
                    ),
                  ),
                  onPressed: ()async{
                    if(_profileController.dataProfile!.user!.cartProducts!.where((element){
                      return element.productId==product.id;
                    }).length!=0){
                      // var data=await backendController.backend.deleteCartProduct(product.id);
                      // if(data!=null){
                      //   _profileController.dataProfile=await backendController.backend.requestGetUser();
                      //   Get.forceAppUpdate();
                      // }
                      mainController.onIndexChanged(2);
                    }else{
                      var data=await backendController.backend.addToCartProduct(product.id);
                      if(data!=null){
                        _profileController.dataProfile=await backendController.backend.requestGetUser();
                        List prod=[];
                        _profileController.dataProfile!.user!.cartProducts!.forEach((e) {
                          print("productswwwwww${e.id}+,");
                          prod.add(jsonEncode(e.toJson()));
                        });
                        await backendController.backend.getProductCartProducts(prod);
                        _profileController.dataCartProducts=backendController.backend.dataCartProducts;

                        Get.forceAppUpdate();
                      }
                      //addToFavoriteProduct
                    }
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