import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/routes/app_pages.dart';

class CatalogController extends GetxController{
  var controllerSearch = new TextEditingController().obs;
  RxString searchText = "".obs;
  RxString chooseAccompaying = "".obs;
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
    {
      "image":[
        "DSC_0211 2.png",
        "DSC_0211 2.png"
      ],      "title":"Пружина распорная воздушного фильтра КАМАЗ ",
      "arcticul":"Артикул: 5320-1109359",
      "brend":"Бренд: ХТЗ",
      "added_backet":false,
      "follow":false,
      "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
      "height":"130",
      "width":"130",
      "length":"130",
      "size":"0,4",
    },
    {
      "image":[
        "DSC_0211 2.png",
        "DSC_0211 2.png"
      ],      "title":"Пружина распорная воздушного фильтра КАМАЗ ",
      "arcticul":"Артикул: 5320-1109359",
      "brend":"Бренд: ХТЗ",
      "added_backet":true,
      "follow":false,
      "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
      "height":"130",
      "width":"130",
      "length":"130",
      "size":"0,4",
    },
    {
      "image":[
        "DSC_0211 2.png",
        "DSC_0211 2.png"
      ],      "title":"Пружина распорная воздушного фильтра КАМАЗ ",
      "arcticul":"Артикул: 5320-1109359",
      "brend":"Бренд: ХТЗ",
      "added_backet":false,
      "follow":true,
      "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
      "height":"130",
      "width":"130",
      "length":"130",
      "size":"0,4",
    },
    {
      "image":[
        "DSC_0211 2.png",
        "DSC_0211 2.png"
      ],      "title":"Пружина распорная воздушного фильтра КАМАЗ ",
      "arcticul":"Артикул: 5320-1109359",
      "brend":"Бренд: ХТЗ",
      "added_backet":false,
      "follow":true,
      "description":"Пружина распорная фильтра воздушного КАМАЗ - ПАО КАМАЗ, артикул 5320-1109359 купить по низкой цене оптом с доставкой по всем регионам России с нашего склада в г. Набережные Челны.",
      "height":"130",
      "width":"130",
      "length":"130",
      "size":"0,4",
    }
  ];

  List<FilterItem> filterItems=[
    new FilterItem(
      "Вид",[
        "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),
    new FilterItem(
        "Марка",[
      "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),
    new FilterItem(
        "Модель",[
      "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),
    new FilterItem(
        "Категория",[
      "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),
    new FilterItem(
        "Подкатегория",[
      "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),
    new FilterItem(
        "Сопутствующие товары",[
      "Ось передняя",
      "Ось задняя",
      "Гусеницы и катки",
      "Рама",
      "Колеса и ступицы"
    ]
    ),

  ];
  var currentIndex = 1.obs;

  RxBool isBlock=false.obs;

  var address= "Добавить адрес".obs;
  var chooseAddress = "Введите адрес".obs;
  // var latLong =new LatLng(0.0, 0.0).obs;
  var chooseCategory = "".obs;

  var images=[];

  @override
  void onInit() {

  }
}
class FilterItem {
  String title="";
  List array=[];

  FilterItem(this.title, this.array);

}
class FilterItems extends StatelessWidget {
  RxBool opened = false.obs;
  FilterItem item;

  FilterItems(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20
      ),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 61,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffE7E7E7),
                    width: 1
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${item.title}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        color: Color(0xff2E2E33)
                    ),
                  ),
                  Obx(
                      ()=> opened.value
                          ?Icon(Icons.keyboard_arrow_up_outlined)
                          :Icon(Icons.keyboard_arrow_down_sharp)
                  )
                ],
              ),
            ),
            onTap: (){
              opened.value=!opened.value;
            },
          ),
          Obx(
              ()=>opened.value?Column(
                children: [
                  ...item.array.map((e) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffE7E7E7),
                                  width: 1
                              )
                          )
                      ),
                      height: 60,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffD6D6D6),
                                width: 1
                              ),
                              borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          SizedBox(width: 16,),
                          Text("${e}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2e2e33),
                            fontFamily: "Roboto"
                          ),)
                        ],
                      ),
                    );
                  }
                  )
                ],
              ):Container()
          )
        ],
      ),
    );
  }


}