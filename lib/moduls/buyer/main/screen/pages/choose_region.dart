import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/models/data_item_region.dart';
import 'package:repair_parts/models/data_regions.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';
import "package:collection/collection.dart";

class ChooseRegion extends StatelessWidget{
  MainController mainController = Get.find();
  bool alt =false;
  bool brt =false;
  bool reg =false;
  bool? bottom;
  ChooseRegion({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  BackendController backendController = Get.find();

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                left: 20,
                top: 40
              ),
              child: Icon(Icons.arrow_back),
            ),
            onTap: (){
              try{
                mainController.controllerMainPage.jumpToPage(1);
              }catch(e){
                try{
                  mainController.controllerBacketPage.jumpToPage(0);
                }catch(e){
                  Get.back();
                }
              }
            },
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: 20,
                      right: 20,
                      top: 12
                    ),
                    height: 31,
                    width: Get.width-106,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xffC4C4C4),
                            width: 1
                        )
                    ),
                    padding: EdgeInsets.only(
                     right: 7,
                      bottom: 7,
                      top: 7
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 3,
                          right: 3,
                          top: 3,
                          bottom: 3

                        ),
                          isDense: true,
                          hintText: "Поиск ",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffC4C4C4),
                              fontFamily: "Roboto",
                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          prefixIcon: Container(
                            width: 8,
                            padding: EdgeInsets.only(
                              right: 10,
                              left: 10
                            ),
                            child: Image.asset("assets/image/search_icon.png"),
                          ),
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 26
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(
                            right: 20,

                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffFFE9E8),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Image.asset("assets/image/done.png",
                            width: 8,height: 6,)
                      ),
                      Container(
                        width: Get.width-100,
                        child: Text(
                            "Все регионы",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff2e2e33),
                                fontFamily: "Roboto"

                            )
                        ),
                      )
                    ],
                  ),
                ),

                ...groupBye(backendController.regionList)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    height: 30,
                    width: (Get.width-52)/2,
                    decoration: BoxDecoration(
                        color: Color(0xffE6332A),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: Text(
                        "Сохранить",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    mainController.controllerMainPage.jumpToPage(1);
                  },
                ),
                Container(
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xffE6332A),
                      )
                  ),
                  height: 30,
                  width: (Get.width-52)/2,
                  child: Center(
                    child: Text(
                      "Сбросить выбор",
                      style: TextStyle(
                          color: Color(0xffE6332A),
                          fontSize: 12,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
  groupBye(searchList){
    List<Widget> list = [];
    var groupByDate = groupBy(searchList,
            (DataRegions obj) => obj.nameWithType.toString().substring(0,1).toUpperCase());
    groupByDate.forEach((date, liste) {
      // Header
      list.add(Container(
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 9
        ),
        child: Text(
          "${date}",
          style: TextStyle(
              color: Color(0xff2e2e33),
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"
          ),
        ),
      ));
      // Group
      liste.forEach((listItem) {
        list.add(RegionItem(listItem));
      });
      // day section divider
    });
    return list;
  }
}
class RegionItem extends StatefulWidget{
  DataRegions region;

  RegionItem(this.region);

  @override
  State<StatefulWidget> createState() {
    return RegionItemState();
  }

}
class RegionItemState extends State<RegionItem>{
  BackendController backendController= Get.find();
  bool choose=false;
  List<DataItemRegion>? list=[];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 8
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
                        right: 20,
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 1,
                              color: Color(0xffD6D6D6)
                          )
                      ),

                    ),
                    Text(
                        "${widget.region.nameWithType} ${widget.region.organizationBranchCount!=0?"(${widget.region.organizationBranchCount})":""}",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"

                        )
                    )
                  ],
                ),
                GestureDetector(
                  child: choose?Container(
                    width: 8,
                    height: 14,
                    child:Image.asset("assets/image/arrow_right.png",color: Color(0xff959595),),
                  ):Container(
                      width: 14,
                      height: 8,
                      child: Image.asset("assets/image/arrow_down.png",color: Color(0xff959595))
                  ),
                  onTap: ()async{
                    setState(() {
                      choose=!choose;
                    });
                    print("13");
                    list=await backendController.backend.getCompanyFromRegion(widget.region.fiasId);
                    setState(() {

                    });
                    print("${list!.length} ${choose}");
                  },
                )
              ],
            ),
          ),
          choose?Container(
            margin: EdgeInsets.only(
              left: 42
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list!.length!=0
                  ?list!.map((e){
                return Container(
                  margin: EdgeInsets.only(
                      top: 10
                  ),
                  child:Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffD6D6D6)
                            )
                        ),

                      ),
                      Text("${e.formalname}",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2e2e33),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"
                        ),),
                    ],
                  ),
                );
              }).toList()
                  :[
                Container(
                    margin: EdgeInsets.only(
                        top: 8
                    ),
                    child:    Text("Ещё нет зарегистрированных организаций",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2E2E334D),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"
                      ),
                    )
                )
              ],
            ),
          ):Container()
        ],
      )
    );
  }

}