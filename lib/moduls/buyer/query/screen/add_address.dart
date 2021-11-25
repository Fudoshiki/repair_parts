import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

class Address extends StatelessWidget{

  Set<Marker> _markes = {
    new Marker(
      markerId: MarkerId("123"),
    position: LatLng(59.837462, 30.510724)
    )
  };
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
                  "Адрес доставки",
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
                GoogleMap(
                  markers: _markes,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(59.837462, 30.510724),
                      zoom: 14
                  ),
                  zoomControlsEnabled: false,
                ),
                Positioned(
                  bottom: 45,
                  left: 20,
                  right: 20,
                  child: Column(
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
                            padding: EdgeInsets.only(
                                right: 20,
                                left: 20,
                                top: 10,
                                bottom: 10
                            ),
                            width: Get.width-40,
                            child:Text("Санкт-Петербург, Прибрежная улица, д.4",style:TextStyle(
                                color: Color(0xff2E2E33),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400
                            ),)
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


                        },
                      ),
                      SizedBox(
                        height: 8,
                      ),


                    ],
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