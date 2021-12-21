import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/catalog/controller/catalog_controller.dart';
import 'package:google_maps_webservice/places.dart';

class AddAddress extends StatelessWidget{
  CatalogController _catalogController =Get.find();

  var controller =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 20,
            margin: EdgeInsets.symmetric(
                horizontal: 20
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
                horizontal: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: (){
                    Get.back();
                  },
                ),
                Text(
                  "Добавить адрес",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2E2E33),
                      fontFamily: "Roboto"
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Icon(Icons.arrow_back),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                // GoogleMap(
                //   initialCameraPosition: CameraPosition(
                //       target: LatLng(0.0,0.0),
                //       zoom: 14
                //   ),
                //   zoomControlsEnabled: false,
                // ),
                Positioned(
                  bottom: 14,
                  left: 20,
                  right: 20,
                  child: Obx(
                      ()=>Column(
                        children: [
                          GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Color(0xffD6D6D6),
                                        width: 1
                                    ),
                                    color: Colors.white
                                ),

                                width: Get.width-40,
                                height: 40,
                                child:TextField(
                                    onTap: ()async{

                                      // var p = await PlacesAutocomplete.show(
                                      //   context: context,
                                      //   apiKey: "AIzaSyAdrvzWxI1LE3OjiN1uv7J2b7I_1DEavLA",
                                      //   mode: Mode.fullscreen,
                                      //   types: [''],
                                      //   language: "fr",
                                      //   strictbounds: false,
                                      //   components: [
                                      //     Component(Component.country, "ua"),
                                      //     Component(Component.country, "ru")
                                      //   ],
                                      // );
                                      // if (p != null) {
                                      //   // get detail (lat/lng)
                                      //   GoogleMapsPlaces _places = GoogleMapsPlaces(
                                      //     apiKey: "AIzaSyAdrvzWxI1LE3OjiN1uv7J2b7I_1DEavLA",
                                      //   );
                                      //   PlacesDetailsResponse detail = await _places.getDetailsByPlaceId(p.placeId.toString());
                                      //   final lat = detail.result.geometry;
                                      //   if(lat !=null){
                                      //     final location = lat.location;
                                      //     print(location);
                                      //   }
                                      //   _catalogController.chooseAddress.value=p.description.toString();
                                      //   print(p.description);
                                      // }

                                    },
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2e2e33),
                                    fontFamily: "Roboto",

                                  ),
                                  controller: controller,
                                  onChanged: (t){
                                      Get.forceAppUpdate();
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      left: 20,
                                      top: 12,
                                      bottom: 7
                                    ),
                                    isDense: true,
                                    hintText: "Введите адрес",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff959595),
                                      fontFamily: "Roboto",

                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                )
                              // TextField(
                              //                   decoration: InputDecoration(
                              //                     hintText: "Введите адрес",
                              //                     hintStyle: TextStyle(
                              //                         color: Color(0xff959595),
                              //                         fontSize: 14,
                              //                         fontFamily: "Roboto",
                              //                         fontWeight: FontWeight.w400
                              //                     ),
                              //                     enabledBorder: InputBorder.none,
                              //                     border: InputBorder.none,
                              //                     focusedErrorBorder: InputBorder.none,
                              //                     focusedBorder: InputBorder.none,
                              //                     errorBorder: InputBorder.none,
                              //                     disabledBorder: InputBorder.none,
                              //                   ),
                              //                 ),
                            ),

                          ),
                          SizedBox(
                            height: 8,
                          ),
                          controller.text!=""?GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffE6332A)
                                ),
                                padding: EdgeInsets.only(
                                  right: 20,
                                  left: 20,
                                ),
                                height: 50,
                                width: Get.width-40,
                                child:Center(
                                  child: Text("Сохранить",style:TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700
                                  ),),
                                )
                              // TextField(
                              //                   decoration: InputDecoration(
                              //                     hintText: "Введите адрес",
                              //                     hintStyle: TextStyle(
                              //                         color: Color(0xff959595),
                              //                         fontSize: 14,
                              //                         fontFamily: "Roboto",
                              //                         fontWeight: FontWeight.w400
                              //                     ),
                              //                     enabledBorder: InputBorder.none,
                              //                     border: InputBorder.none,
                              //                     focusedErrorBorder: InputBorder.none,
                              //                     focusedBorder: InputBorder.none,
                              //                     errorBorder: InputBorder.none,
                              //                     disabledBorder: InputBorder.none,
                              //                   ),
                              //                 ),
                            ),
                            onTap: ()async{
                              _catalogController.address.value=_catalogController.chooseAddress.value;
                              _catalogController.chooseAddress.value="Введите адрес";
                              Get.back();

                            },
                          ):Container()

                        ],
                      )
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }

}