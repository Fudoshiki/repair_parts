import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/catalog_screen.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';

class CatalogItems extends StatefulWidget{
  CatalogItem items;
  bool onTap;
  CatalogItems(@required this.items,@required this.onTap);

  @override
  State<StatefulWidget> createState() {
    return CatalogItemState();
  }

}
class CatalogItemState extends State<CatalogItems>{
  CatalogController _catalogController =Get.find();
  MainController _mainController =Get.find();
  bool opened=false;
  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return getCalogRow(widget.items.image, widget.items.title);
  }
  Widget getCalogRow(image,title){
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
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff959595),
                  )
                ],
              )
          ),
          onTap: (){
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
              Container(
                margin: EdgeInsets.only(
                    bottom: 22
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(
                          right: 8
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        color: Color(0xffFFE9E8)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          size: 15,
                          color: Color(0xffE6332A),
                        ),
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
              ...widget.items.array.map((el){
                return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: 22
                    ),
                    child: Row(
                      children: [
                        Container(
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
                          "${el}",
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
                    if(
                    widget.onTap
                    ){
                      Get.to(()=>ListItems(el));
                    }else{
                      _catalogController.chooseCategory.value=el;
                      _mainController.controllerMainPage.jumpToPage(1);
                  }
                  }
                );
              })
            ],
          ),
        ):Container()
      ],
    );
  }


}