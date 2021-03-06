import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/models/rows_sellers.dart';
import 'package:repair_parts/moduls/buyer/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class ChooseSeller extends StatefulWidget {
  ChooseSeller({@required this.bottom});
  bool? bottom;

  @override
  State<StatefulWidget> createState() {
    return ChooseSellerState();
  }
}
class ChooseSellerState extends State<ChooseSeller>{
  MainController mainController = Get.find();
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  BackendController backendController =Get.find();
  List<SellerChoose> listSeller=[];
  @override
  void initState() {
    backendController.dataSellers.rows!.forEach((element) {
      listSeller.add(new SellerChoose(false, element));
    });
    setState(() {
    });
  }
  bool allChoose=false;
  bool allChooseSellerSend=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                top: 40,
                left: 20,
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
              children: [
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20
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
                        bottom: 7,
                        top: 7
                    ),
                    child: TextField(
                      enabled: false,
                      onTap: (){
                      },
                      decoration: InputDecoration(
                          hintText: "Поиск ",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffC4C4C4),
                              fontFamily: "Roboto"

                          ),
                        contentPadding: EdgeInsets.only(
                            left: 20,
                            right: 3,
                            top: 3,
                            bottom: 3

                        ),
                          isDense: true,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          suffixIcon:  Container(
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
                //allChooseSellerSend
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 26
                    ),
                    padding: EdgeInsets.only(
                        bottom: 5
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        allChooseSellerSend?Container(
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
                        ): Container(
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
                        Container(
                          width: Get.width-100,
                          child: Text(
                              "Всегда отправлять только выбранным продавцам"
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      allChooseSellerSend=!allChooseSellerSend;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 26
                    ),
                    padding: EdgeInsets.only(
                        bottom: 16
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        allChoose?Container(
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
                        ): Container(
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
                        Container(
                          width: Get.width-100,
                          child: Text(
                              "Выбрать всех"
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    listSeller.forEach((e){
                      setState(() {
                        e.value=!allChoose;
                      });
                    });
                    setState(() {
                      allChoose=!allChoose;
                    });
                  },
                ),
                ...listSeller.map((e) => SellerChooseItem(e)),


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


}
class SellerChooseItem extends StatefulWidget{
  SellerChoose sellerChoose;

  SellerChooseItem(this.sellerChoose);

  @override
  State<StatefulWidget> createState() {
    return SellerChooseItemState();
  }

}
class SellerChooseItemState extends State<SellerChooseItem>{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 12
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.sellerChoose.value
                ?Container(
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
            )
                : Container(
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
            Container(
              width: Get.width-100,
              child: Text(
                  widget.sellerChoose.seller.lastname==null&&widget.sellerChoose.seller.firstname==null&&widget.sellerChoose.seller.middlename==null
                      ?"${widget.sellerChoose.seller.phone}"
                      :"${widget.sellerChoose.seller.lastname==null?"":"${widget.sellerChoose.seller.lastname} "}${widget.sellerChoose.seller.firstname==null?"":"${widget.sellerChoose.seller.firstname} "}${widget.sellerChoose.seller.middlename==null?"":"${widget.sellerChoose.seller.middlename} "}"
              ),
            )
          ],
        ),
      ),
      onTap: (){
        setState(() {
          widget.sellerChoose.value=!widget.sellerChoose.value;
        });
      },
    );
  }

}
class SellerChoose {
  bool value;
  RowsSellers seller;

  SellerChoose(this.value, this.seller);
}