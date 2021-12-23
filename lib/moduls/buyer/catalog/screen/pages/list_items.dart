
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/block_product.dart';
import 'package:repair_parts/components_main/item_block.dart';
import 'package:repair_parts/components_main/item_row.dart';
import 'package:repair_parts/components_main/loader.dart';
import 'package:repair_parts/components_main/row_product.dart';
import 'package:repair_parts/models/data_catalog_product_search.dart';
import 'package:repair_parts/models/rows_auto_types.dart';
import 'package:repair_parts/models/rows_brand_auto.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

import 'filter_page.dart';

class ListItems extends StatefulWidget {
  RowsAutoTypes? autoType;
  RowsBrandAuto? brandAuto;
  bool? bottom;

  ListItems({this.autoType, this.brandAuto, this.bottom});

  @override
  State<StatefulWidget> createState() {
    return ListItemsState();
  }
}
class ListItemsState extends State<ListItems>{
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  var array=[
    {
      "image":[
        "DSC_0211 2.png",
        "DSC_0211 2.png"
      ],
      "title":"Пружина распорная воздушного фильтра КАМАЗ",
      "arcticul":"Артикул: 5320-1109359",
      "brend":"Бренд: ХТЗ",
      "added_backet":true,
      "follow":true,
      "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
      "height":"130",
      "width":"130",
      "length":"130",
      "size":"0,4",
    },

  ];
  RxString typeSort="По дате".obs;
  RxBool row=true.obs;
  CatalogController catalogController=Get.find();
  DataCatalogProductSearch? dataCatalogProductByBrandAuto=new DataCatalogProductSearch();
  BackendController backendController = Get.find();

  @override
  void initState() {
    backendController.backend.getDataCatalogProductByBrandAuto(widget.autoType!.label.toString(), widget.brandAuto!.label.toString()).then((value){
      setState(() {
        dataCatalogProductByBrandAuto=value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottom!=null?         SizedBox(height: 70,


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
        backgroundColor: Color(0xffE6332A),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              child:Container(
                padding: EdgeInsets.only(top: 12,bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xffE6332A),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        margin:EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      onTap: (){
                        Get.back();
                      },
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 44,
                              width: Get.width-130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white
                              ),
                              child: TextField(
                                enabled: false,
                                onTap: (){
                                },
                                decoration: InputDecoration(
                                    hintText: "Поиск запчастей",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff959595),
                                        fontFamily: "Roboto"

                                    ),
                                    prefixIcon: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 12
                                      ),
                                      width: 14,
                                      height: 14,
                                      child: Image.asset(
                                        "assets/image/search_icon.png",
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                              )
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 20),
                      height: 22,
                      width: 26,
                      child: Image.asset("assets/image/камера.png"),
                    )
                  ],
                ),
              ),
              onTap:(){

              }
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 13,
            ),
            padding: EdgeInsets.only(
              bottom: 10
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xffE7E7E7)
                )
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.brandAuto!.name}",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e2e33),
                      fontFamily: "Roboto"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Obx(
                              ()=>Text(
                                "${typeSort}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto"
                                ),
                              )
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xff2e2e33),
                            ),
                          ),
                        ],
                      ),
                      onTap: (){
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
                                            Container(
                                              height: 50,
                                              child: Center(
                                                child: Text(
                                                  "Сортировать:",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily: "Roboto",
                                                      color: Color(0xff2E2E33)
                                                  ),
                                                ),
                                              ),
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
                                                    "По дате",
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
                                                typeSort.value = "По дате";
                                                Get.back();
                                                Get.appUpdate();
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
                                                    "По алфавиту",
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
                                                typeSort.value = "По алфавиту";
                                                Get.back();
                                                Get.appUpdate();

                                              },
                                            )
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                            );
                          },
                        );
                      },
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Container(
                            width: 14,
                            height: 11,
                            child: Image.asset("assets/image/filter.png"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Фильтры",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        Get.to(()=>FilterPage());
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          dataCatalogProductByBrandAuto!.rows==null?Expanded(child: Loader()): Obx(
              ()=>catalogController.isBlock.value
                  ?Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 0,
                    bottom: 21
                  ),
                  children: [
                    ...dataCatalogProductByBrandAuto!.rows!.map(
                            (el){
                          return RowProduct(el);
                        }
                    )
                  ],
                ),
              )
                  :Expanded(
                child: GridView.count(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 5,
                  childAspectRatio: ((Get.width-40)/2)/330,
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 21
                  ),
                  children: List.generate(dataCatalogProductByBrandAuto!.rows!.length, (index) {
                    return BlockProduct(dataCatalogProductByBrandAuto!.rows![index]);
                  }),
                ),
              )
          ),
        ],
      ),
    );
  }

}