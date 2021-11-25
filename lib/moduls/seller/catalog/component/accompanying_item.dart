import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/buyer/catalog/screen/catalog_screen.dart';

class AccompanyingItems extends StatefulWidget{
  CatalogItem items;
  AccompanyingItems(@required this.items);

  @override
  State<StatefulWidget> createState() {
    return CatalogItemState();
  }

}
class CatalogItemState extends State<AccompanyingItems>{

  bool opened=false;
  @override
  void initState() {

  }
  CatalogController catalogController =Get.find();
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
                  color: catalogController.chooseAccompaying.value==widget.items.title?
                  Color(0xffFFE9E8):Color(0xffF3F3F3),
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
                        width:26,
                        height: 26,
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

                ],
              )
          ),
          onTap: (){
            setState(() {
              catalogController.chooseAccompaying.value=widget.items.title;
            });
            Get.forceAppUpdate();
          },
        ),
      ],
    );
  }


}