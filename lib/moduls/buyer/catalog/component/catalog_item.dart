import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/loader.dart';
import 'package:repair_parts/models/data_brand_auto.dart';
import 'package:repair_parts/models/rows_auto_types.dart';
import 'package:repair_parts/models/rows_brand_auto.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class CatalogItems extends StatefulWidget{
  RowsAutoTypes item;
  bool onTap;
  CatalogItems(@required this.item,@required this.onTap);

  @override
  State<StatefulWidget> createState() {
    return CatalogItemState();
  }

}
class CatalogItemState extends State<CatalogItems>{
  CatalogController _catalogController =Get.find();
  MainController _mainController =Get.find();
  DataBrandAuto dataBrandAuto = new DataBrandAuto();
  BackendController backendController =Get.find();
  bool opened=false;
  bool chooseAll=false;
  List<BrandAutoItem> list=[];
  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5
              ),
              decoration: BoxDecoration(
                  color: opened?Color(0xffFFE9E8): Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(6)
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 11
              ),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 20,
                        child: Image.network("https://inf.market/img/catalog/${widget.item.label}.png"),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "${widget.item.name}",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2E2E33),
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff959595),
                  )
                ],
              )
          ),
          onTap: ()async {
            await backendController.backend.getBrandAuto(widget.item.label);
            dataBrandAuto = backendController.backend.dataBrandAuto;
            print("${dataBrandAuto.count}");
            list=[];
            dataBrandAuto.rows!.forEach((element) {
              list.add(BrandAutoItem(false, element));
            });
            setState(() {
              opened=!opened;
            });
          },
        ),
        opened?Container(
          margin: EdgeInsets.symmetric(
              horizontal: 20
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: 29,top: 10
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffD6D6D6),
                        width: 1
                    ),
                    borderRadius: BorderRadius.circular(6)
                ),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Поиск по марке",
                      hintStyle: TextStyle(
                          color: Color(0xff959595),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400
                      ),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 14
                        ),
                        width: 14,
                        height: 14,
                        child: Image.asset(
                          "assets/image/search_icon.png",
                          fit: BoxFit.fill,
                        ),
                      )
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 22
                  ),
                  child: Row(
                    children: [
                      chooseAll?Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffFFE9E8)
                        ),
                        padding: EdgeInsets.all(4),
                        child: Center(
                            child: Image.asset("assets/image/done.png")
                        ),
                      ):Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Color(0xffD6D6D6)
                            )
                        ),
                      ),
                      Text(
                        "Выбрать все",
                        style: TextStyle(
                            color: Color(0xff2e2e33),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){
                  list.forEach((element) {
                    element.choose=!chooseAll;
                  });
                  setState(() {
                    chooseAll=!chooseAll;
                  });
                },
              ),
              dataBrandAuto.count==null?Loader():dataBrandAuto.count==0?Loader()
                  :Column(
                children: [
                  ...list.map((e){
                    return ItemBrandAuto(e,widget.item);
                  })
                ],
              )

            ],
          ),
        ):Container()
      ],
    );
  }



}
class ItemBrandAuto extends StatefulWidget {
  BrandAutoItem row;
  RowsAutoTypes rowsAutoTypes;
  ItemBrandAuto(this.row,this.rowsAutoTypes);

  @override
  State<StatefulWidget> createState() {
    return ItemBrandAutoState();
  }

}
class ItemBrandAutoState extends State<ItemBrandAuto>{

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.only(
                bottom: 22
            ),
            child: Row(
              children: [
                widget.row.choose?Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(
                      right: 8
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffFFE9E8)
                  ),
                  padding: EdgeInsets.all(4),
                  child: Center(
                      child: Image.asset("assets/image/done.png")
                  ),
                ):Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(
                      right: 8
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: Color(0xffD6D6D6)
                      )
                  ),
                ),
                Text(
                  "${widget.row.rowsAutoTypes.name}",
                  style: TextStyle(
                      color: Color(0xff2e2e33),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"
                  ),
                )
              ],
            ),
          ),
          onTap: (){
            setState(() {
              widget.row.choose=!widget.row.choose;
            });
            Get.to(ListItems(autoType:widget.rowsAutoTypes,brandAuto:widget.row.rowsAutoTypes, bottom: true));
          }
      );

  }

}
class BrandAutoItem{
  bool choose;
  RowsBrandAuto rowsAutoTypes;

  BrandAutoItem(this.choose, this.rowsAutoTypes);

}