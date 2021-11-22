import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/components_main/item_row.dart';
import 'package:repair_parts/moduls/catalog/controller/catalog_controller.dart';
import 'package:repair_parts/moduls/catalog/screen/pages/list_items.dart';
import 'package:repair_parts/moduls/main/component/bottom_item.dart';
import 'package:repair_parts/moduls/main/controller/main_controller.dart';
import 'package:repair_parts/moduls/main/screen/pages/add_address.dart';
import 'package:repair_parts/routes/app_pages.dart';
import 'package:image_picker/image_picker.dart';

class SearchPage extends StatelessWidget{
  CatalogController catalogController =Get.find();
  MainController _mainController =Get.find();
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();
  bool? bottom;
  SearchPage({@required this.bottom});

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
        backgroundColor: Color(0xffE6332A),
        elevation: 0,
        toolbarHeight: 0,

      ),
      body: Column(
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
                        try{
                          _mainController.controllerMainPage.jumpToPage(0);
                        }catch(e){
                          Get.back();
                        }
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                          height: 44,
                          width: Get.width-86,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Поиск запчастей",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff959595),
                                          fontFamily: "Roboto",

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
                                  controller: catalogController.controllerSearch.value,
                                  onChanged: (t){
                                    catalogController.searchText.value=t;
                                  },
                                ),
                              ),
                              Obx(
                                  ()=>catalogController.searchText.value!=""?GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/image/cansel.png"),
                                    ),
                                    onTap: (){
                                      catalogController.searchText.value="";
                                      catalogController.controllerSearch.value.text="";
                                    },
                                  ):Container()
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              onTap:(){
              }
          ),
          Expanded(
            child: ListView(
              children: [
                Obx(
                    ()=>catalogController.searchText.value!=""
                        ?Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 37,
                          bottom: 25
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            width: Get.width-40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/image/no_search.png"),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          bottom: 15
                                        ),
                                        child: Text(
                                          "По вашему запросу ничего найдено",
                                          style: TextStyle(
                                            color: Color(0xff2E2E33),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto"
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: Get.width-138,

                                        child: Text(
                                          "Не нашли что искали? Найдем за вас! Заполните форму для уточнения деталей запроса.",
                                          style: TextStyle(
                                              color: Color(0xff2E2E33),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto",
                                            height: 1.4
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 15,
                                    top: 37
                                  ),
                                  child: Text(
                                    "Запрос по фото/описанию",
                                    style: TextStyle(
                                        color: Color(0xff2E2E33),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Выберите категорию товара и заполните необходимую информацию",
                                    style: TextStyle(
                                        color: Color(0xff2E2E33),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                        height: 1.4
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Choose Address
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 16,
                                      top: 28
                                  ),
                                  child: Text(
                                    "Адрес доставки",
                                    style: TextStyle(
                                        color: Color(0xff2E2E33),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto"
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 40,
                                              height: 40,
                                              margin: EdgeInsets.only(
                                                  right: 20
                                              ),
                                              padding: EdgeInsets.all(11),
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFFE9E8),
                                                  borderRadius: BorderRadius.circular(6)
                                              ),
                                              child: Image.asset("assets/image/marcker.png",
                                                width: 12,height: 18,)
                                          ),
                                          Container(
                                            width: Get.width-100,
                                            child: Text(
                                              "${catalogController.address.value}",
                                              style: TextStyle(
                                                  color: Color(0xffE6332A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                  onTap: (){
                                    Get.to(AddAddress());
                                  },
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          //Choose Category
                          Obx(
                              ()=>catalogController.chooseCategory.value==""
                                  ?GestureDetector(
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(6),
                                  dashPattern: [5, 5],
                                  color: Color(0xffC00000),
                                  strokeWidth: 1,
                                  child: Container(
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Выбрать категорию",
                                        style: TextStyle(
                                            color: Color(0xff2e2e33),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  _mainController.controllerMainPage.jumpToPage(3);
                                },
                              )
                                  :GestureDetector(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          bottom: 15
                                      ),
                                      child: Text(
                                        "Категория",
                                        style: TextStyle(
                                            color: Color(0xff2e2e33),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto"
                                        ),
                                      ),
                                    ),
                                    Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                width: 40,
                                                height: 40,
                                                margin: EdgeInsets.only(
                                                    right: 20
                                                ),
                                                padding: EdgeInsets.all(11),
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFFE9E8),
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                child: Image.asset("assets/image/done.png",
                                                  width: 12,height: 18,)
                                            ),
                                            Container(
                                              width: Get.width-124,
                                              child: Text(
                                                "${catalogController.chooseCategory.value}",
                                                style: TextStyle(
                                                    color: Color(0xffE6332A),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Roboto"
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xff959595),
                                            )
                                          ],
                                        )
                                    )
                                  ],
                                ),
                                onTap: (){
                                  _mainController.controllerMainPage.jumpToPage(3);

                                },
                              ),
                          ),
                          //Count
                          Container(
                            margin: EdgeInsets.only(
                              top: 30,
                              bottom: 37
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Количество:",
                                  style: TextStyle(
                                    color: Color(0xff2E2E33),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xffF3F3F3)
                                      ),
                                      child: Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xff717171)
                                          ),
                                          width: 12,
                                          height: 2,
                                        ),
                                      )
                                  ),
                                  onTap: (){
                                    if(catalogController.currentIndex.value==0){

                                    }else{
                                      catalogController.currentIndex.value-=1;
                                    }
                                  },
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 13
                                  ),
                                  child: Text(
                                    "${
                                    catalogController.currentIndex.value
                                    }"
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xffE6332A)
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top:5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(1),
                                                      color: Colors.white
                                                  ),
                                                  width: 12,
                                                  height: 2,
                                                ),
                                              ),
                                              Positioned(
                                                left: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(1),
                                                      color: Colors.white
                                                  ),
                                                  width: 2,
                                                  height: 12,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                  onTap: (){
                                    if(catalogController.currentIndex.value==12){

                                    }else{
                                      catalogController.currentIndex.value+=1;
                                    }
                                  },
                                )

                              ],
                            ),
                          ),
                          Text(
                            "Описание",
                            style: TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Roboto"
                            ),
                          ),
                          //Enter Description
                          Container(
                            margin: EdgeInsets.only(
                              top: 16,
                              bottom: 20
                            ),
                            height: 140,
                            padding: EdgeInsets.only(
                                left:20,
                            right: 20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffD6D6D6),
                                width: 1
                              ),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: "Опишите словами, что необходимо найти",
                                hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff959595)
                                ),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          //Micro
                          Container(
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: Color(0xffFFE9E8),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: Get.width-80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFE9E8),
                                      borderRadius: BorderRadius.circular(6)
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Или надиктуйте",
                                        style: TextStyle(
                                            color: Color(0xffE6332A),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto"
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 10
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffE6332A),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child:Image.asset("assets/image/micro.png",height: 20,width: 13,color: Colors.white,),
                                ),
                              ],
                            ),
                          ),
                          //Image
                          Container(
                            margin: EdgeInsets.only(
                              top: 36
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Прикрепить",
                                  style: TextStyle(
                                      color: Color(0xff2E2E33),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                Container(
                                  width: Get.width,
                                  height: 95,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      ...catalogController.images.map(
                                              (el){
                                            return Container(
                                              width: 90,
                                                height: 90,
                                                margin: EdgeInsets.only(
                                                    right: 10,top: 5
                                                ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    bottom: 0,
                                                    left: 0,
                                                    child: Container(
                                                      height: 80,
                                                      width: 80,

                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          image: DecorationImage(
                                                              image: FileImage(
                                                                  new File(el)
                                                              ),fit: BoxFit.fill
                                                          )
                                                      ),

                                                    )
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    right: 0,
                                                    child: GestureDetector(
                                                      child: Container(
                                                        height: 20,
                                                        width: 20,
                                                        child: Image.asset("assets/image/cansele.png"),
                                                      ),
                                                      onTap: (){
                                                        catalogController.images.remove(el);
                                                        Get.forceAppUpdate();
                                                      },
                                                    )
                                                  )
                                                ],
                                              )
                                            );
                                          }
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          margin: EdgeInsets.only(
                                              top: 12
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xffE6332A)
                                              )
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6,
                                              vertical: 11
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 25,
                                                margin: EdgeInsets.only(
                                                    bottom: 2
                                                ),
                                                child: Image.asset("assets/image/plus.png"),
                                              ),
                                              Text(
                                                "Загрузить файл",
                                                style: TextStyle(
                                                    color: Color(0xffE6332A),
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Roboto"
                                                ),
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          ),
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
                                                              GestureDetector(
                                                                child: Container(
                                                                  height: 50,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Сделать фото",
                                                                      style: TextStyle(
                                                                          fontSize: 16,
                                                                          fontWeight: FontWeight.w400,
                                                                          fontFamily: "Roboto",
                                                                          color: Color(0xff2E2E33)
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                onTap: ()async{
                                                                  final ImagePicker _picker = ImagePicker();
                                                                  final pickedFile= await _picker.pickImage(source: ImageSource.camera);
                                                                  if(
                                                                  pickedFile!=null
                                                                  ){
                                                                    catalogController.images.add(pickedFile.path);
                                                                    print(pickedFile.path);
                                                                    Get.forceAppUpdate();

                                                                  }
                                                                  Get.back();
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
                                                                      "Выбрать из галереи",
                                                                      style: TextStyle(
                                                                          fontSize: 16,
                                                                          fontWeight: FontWeight.w400,
                                                                          fontFamily: "Roboto",
                                                                          color: Color(0xff2E2E33)
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                onTap: ()async{
                                                                  final ImagePicker _picker = ImagePicker();
                                                                  final pickedFile= await _picker.pickImage(source: ImageSource.gallery);
                                                                  if(
                                                                  pickedFile!=null
                                                                  ){
                                                                    catalogController.images.add(pickedFile.path);
                                                                    print(pickedFile.path);
                                                                    Get.forceAppUpdate();

                                                                  }
                                                                  Get.back();
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          width: Get.width-26,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius:
                                                              const BorderRadius.all(Radius.circular(10.0))),
                                                          child: Column(
                                                            children: [
                                                              GestureDetector(
                                                                child: Container(
                                                                  height: 50,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Отмена",
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
                                                                  Get.back();
                                                                },
                                                              ),
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
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                top: 30
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Выбрать регион Поставщика",
                                  style: TextStyle(
                                      color: Color(0xff2E2E33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 50,
                                    width: Get.width-40,
                                    margin: EdgeInsets.only(
                                        top: 12
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          child: Text(
                                            "Не выбрано",
                                            style: TextStyle(
                                                color: Color(0xff959595),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(6),
                                                  topRight: Radius.circular(6)
                                              ),
                                              color: Color(0xffF3F3F3)

                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              color: Color(0xff959595),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    _mainController.controllerMainPage.jumpToPage(4);
                                  },
                                )

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 23
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Выбрать продавца",
                                  style: TextStyle(
                                      color: Color(0xff2E2E33),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 50,
                                    width: Get.width-40,
                                    margin: EdgeInsets.only(
                                        top: 12
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffD6D6D6)
                                        )
                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          child: Text(
                                            "Не выбрано",
                                            style: TextStyle(
                                                color: Color(0xff959595),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Roboto"
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(6),
                                                  topRight: Radius.circular(6)
                                              ),
                                              color: Color(0xffF3F3F3)

                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              color: Color(0xff959595),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    _mainController.controllerMainPage.jumpToPage(5);
                                  },
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    )
                        :Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 37,
                              bottom: 25
                          ),
                          child: Text(
                            "Результат поиска",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 22,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                        ),
                        ...catalogController.array.map(
                                (el){
                              return ItemRow(el);
                            }
                        )
                      ],
                    )
                )
              ],
            ),
          ),
          Obx(
                  ()=>catalogController.searchText.value!=""
                  ?Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(
                      vertical: 18,horizontal: 20
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffE6332A),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child:  Center(
                    child: Text(
                      "Отправить запрос",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto"
                      ),
                    ),
                  )
              ):Container()
          ),
        ],
      ),
    );
  }



}
