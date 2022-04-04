import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:repair_parts/components_main/loader.dart';
import 'package:repair_parts/models/files.dart';
import 'package:repair_parts/models/rows_message_chat.dart';
import 'package:repair_parts/moduls/buyer/chat/controller/chat_controller.dart';
import "package:collection/collection.dart";

class ChatWithSeller extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return ChatWithSellerState();
  }

}
class ChatWithSellerState extends State<ChatWithSeller>{
  ChatController chatController = Get.put(ChatController());

  double _currentSliderValue=0.0;


  @override
  Widget build(BuildContext context) {
    return chatController.dataChatById!.members==null&&chatController.dataMessageChatById!.rows==null?Loader() :Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 41
            ),
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 4
            ),
            height: 40,
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
                Row(
                  children: [
                    Container(
                      width: 20,
                      margin: EdgeInsets.only(
                          right: 20
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff2e2e33),
                      ),
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      margin: EdgeInsets.only(
                          right: 10
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffDA6468),
                          borderRadius: BorderRadius.circular(
                              5
                          )
                      ),
                      child: Image.asset("assets/image/profile.png"),
                    ),
                    Text(
                      "${chatController.dataChatById!.members![0].user!=null?chatController.dataChatById!.members![0].user!.firstname:"Имя продавца"}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2e2e33),
                          fontFamily: "Roboto"
                      ),
                    )

                  ],
                ),
                Container(
                  height: 18,
                  width: 18,
                  child: Image.asset("assets/image/phone.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 60,
                right: 20,
                top:10,
                bottom: 11
            ),
            height: 40,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(0xffE7E7E7),
                        width: 1
                    )
                )
            ),
            child: Row(
              children: [
                Text(
                  "Заказ 1-6",
                  style: TextStyle(
                      color: Color(0xff2e2e33),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  left: 20,
                  right: 20
              ),
              children: [

                ...groupBye(chatController.dataMessageChatById!.rows)

                //
                // SizedBox(
                //   height: 24,
                // ),
                // Container(
                //     alignment: false?Alignment.centerRight:Alignment.centerLeft,
                //
                //     margin: EdgeInsets.only(
                //       left: !false?Get.width-(246+55):0,
                //       right: !false?0:Get.width-(229+55),
                //     ),
                //     child:Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         Image.asset("assets/image/done2.png",height: 10,width: 20,),
                //         SizedBox(width: 12,),
                //         Container(
                //           padding: EdgeInsets.only(
                //               left: 10,
                //               right: 10,
                //               top: 9,
                //               bottom: 2
                //           ),
                //
                //           width: 229*1.0,
                //           height: 58*1.0,
                //           decoration: BoxDecoration(
                //               color: false? Color(0xffF3F3F3):Color(0xffE6332A),
                //               borderRadius: BorderRadius.circular(6)
                //           ),
                //           child: Column(
                //               children:[
                //                 Text(
                //                   "Добрый день, какая ТК для вас предпочтительнее?",
                //                   style: TextStyle(
                //                       color: !false?Colors.white:Color(0xff2e2e33),
                //                       fontSize: 14,
                //                       fontWeight: FontWeight.w400,
                //                       fontFamily: "Roboto"
                //                   ),
                //                 ),
                //                 Row(
                //                   mainAxisAlignment: MainAxisAlignment.end,
                //                   children: [
                //                     Text(
                //                       "18:41",
                //                       style: TextStyle(
                //                           color: !false?Color(0xffEDEDED):Color(0xff959595),
                //                           fontSize: 10,
                //                           fontWeight: FontWeight.w400,
                //                           fontFamily: "Roboto"
                //                       ),
                //                     ),
                //                   ],
                //                 )
                //               ]
                //           ),
                //         )
                //
                //       ],
                //     )
                // ),
                // SizedBox(
                //   height: 24,
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     left: !true?Get.width-(246+55):0,
                //     right: !true?0:Get.width-(246+66),
                //   ),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(6),
                //       color: Color(0xffF3F3F3)
                //   ),
                //   padding: EdgeInsets.symmetric(
                //       horizontal: 10,
                //       vertical: 5
                //   ),
                //
                //   child: Row(
                //     children: [
                //       Container(
                //           width: 30,
                //           height: 30,
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: Color(0xffE6332A)
                //           ),
                //           padding: EdgeInsets.all(5),
                //           child: Image.asset("assets/image/pause.png",height: 30,color: Colors.white,)
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Opacity(
                //             opacity: 0,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.end,
                //               children: [
                //                 Text(
                //                   "00:15",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 ),
                //                 Text(
                //                   "18:45",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Container(
                //             width: Get.width-200,
                //             child: Row(
                //               children: [
                //                 Container(
                //                   height: 3,
                //                   width: 46,
                //                   decoration: BoxDecoration(
                //                     color: Color(0xffE6332A),
                //                     borderRadius: BorderRadius.circular(20),
                //                   ),
                //                 ),
                //                 Container(
                //                   height: 10,
                //                   width: 10,
                //                   decoration: BoxDecoration(
                //                       shape: BoxShape.circle,
                //                       color: Color(0xffE6332A)
                //                   ),
                //                 ),
                //                 Container(
                //                   width: Get.width-256,
                //                   height: 3,
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(20),
                //                       color: Color(0xffD6D6D6)
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Container(
                //             width: Get.width-200,
                //             child:  Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Text(
                //                   "00:15",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 ),
                //                 Text(
                //                   "18:45",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 )
                //               ],
                //             ),
                //           )
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //   height: 40,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         "27 марта 2021",
                //         style: TextStyle(
                //             color: Color(0xff959595),
                //             fontSize: 12,
                //             fontWeight: FontWeight.w600,
                //             fontFamily: "Roboto"
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     left: !false?Get.width-(246+55):0,
                //   ),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(6),
                //       color: Color(0xffE6332A)
                //   ),
                //   padding: EdgeInsets.symmetric(
                //       horizontal: 10,
                //       vertical: 5
                //   ),
                //
                //   child: Row(
                //     children: [
                //       Container(
                //           width: 30,
                //           height: 30,
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: Color(0xff)
                //           ),
                //           child: Image.asset("assets/image/play.png",height: 30,color: Colors.white,)
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Opacity(
                //             opacity: 0,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.end,
                //               children: [
                //                 Text(
                //                   "00:15",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 ),
                //                 Text(
                //                   "18:45",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Color(0xff959595)
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Container(
                //             width: Get.width-220,
                //             child: Row(
                //               children: [
                //
                //                 Container(
                //                   height: 10,
                //                   width: 10,
                //                   decoration: BoxDecoration(
                //                       shape: BoxShape.circle,
                //                       color: Colors.white
                //                   ),
                //                 ),
                //                 Container(
                //                   width: Get.width-230,
                //                   height: 5,
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(20),
                //                       color: Color(0xffDE7C7C)
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Container(
                //             width: Get.width-220,
                //             child:  Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Text(
                //                   "00:15",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Colors.white
                //                   ),
                //                 ),
                //                 Text(
                //                   "18:45",
                //                   style: TextStyle(
                //                       fontSize: 10,
                //                       fontFamily: "Roboto",
                //                       fontWeight: FontWeight.w400,
                //                       color: Colors.white
                //                   ),
                //                 )
                //               ],
                //             ),
                //           )
                //         ],
                //       )
                //     ],
                //   ),
                // ),




              ],
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 5
            ),
            margin: EdgeInsets.only(
              bottom:Platform.isIOS?21:0
            ),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Color(0xffE7E7E7),
                        width: 1
                    )
                )
            ),
            child: Row(
              children: [
                Container(
                  width: Get.width-90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 12
                        ),
                        height: 40,
                        width: Get.width-168,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: "Отправьте сообщение...",
                            hintStyle: TextStyle(
                                color: Color(0xff959595),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"
                            ),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset("assets/image/add.png",color: Color(0xff959595),),
                            SizedBox(width: 18,),
                            Image.asset("assets/image/photo.png",color: Color(0xff959595),),
                            SizedBox(width: 14,)
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
                                  contentPadding: EdgeInsets.all(0),
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
                                                      "Камера",
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
                                                      "Загрузить фото",
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
                                                      "Документ",
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffE6332A)
                  ),
                  padding: EdgeInsets.only(
                      left: 14,
                      right: 14,
                      top: 10,
                      bottom: 10
                  ),
                  child: Image.asset("assets/image/micro.png",color: Colors.white,),
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
            (RowsMessageChat obj) => obj.createdAt!.split("T")[0]);
    groupByDate.forEach((date, liste) {
      // Header
      list.add(Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${DateTime.parse(date).day>10?DateTime.parse(date).day:"0${DateTime.parse(date).day}"}"
                  ".${DateTime.parse(date).month>10?DateTime.parse(date).month:"0${DateTime.parse(date).month}"}"
                  ".${DateTime.parse(date).year}",
              style: TextStyle(
                  color: Color(0xff959595),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"
              ),
            )
          ],
        ),
      ));
      // Group
      liste.forEach((listItem) {
        list.add(getMessage(listItem));
      });
      // day section divider
    });
    return list;
  }
  Widget getMessage(RowsMessageChat messageChat){
    bool isAuthor=messageChat.authorId==chatController.dataChatById!.members![0].user!.id;
    return Padding(
      // add some padding
      padding: EdgeInsets.fromLTRB(
        isAuthor ?  0.0:64.0,
        4,
        isAuthor ? 64.0:0.0  ,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isAuthor ? Alignment.centerLeft:Alignment.centerRight ,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isAuthor?Color(0xffF3F3F3):Color(0xffE6332A),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: messageChat.text!=null
                ? Text(
              "${parse(messageChat.text).documentElement!.text}",
              maxLines: 10,
              style: TextStyle(
                  color: isAuthor?Color(0xff2e2e33):Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"
              ),
            )
                :Container(
                child: FileMessage(messageChat.files![0])
            ),
          ),
        ),
      ),
    );

  }

//   getAudioSettings()async{
//     await player.setUrl('https://api.inf.market/files/unknown/24-12-2021/users/guest/p2hibds645zfs4e2fiij-audio.wav'); // prepare the player with this audio but do not start playing
//     await player.setReleaseMode(ReleaseMode.STOP); // set release mode so that it never releases
//
//     // on button click
//      // quickly plays the sound, will not release
//
//     // // on exiting screen
//     // await player.release();
// }
}
class FileMessage extends StatefulWidget{
  Files file;
  FileMessage(this.file);

  @override
  State<StatefulWidget> createState() {
    return FileMessageState();
  }

}
class FileMessageState extends State<FileMessage>{

  @override
  Widget build(BuildContext context) {
    bool image=false;
    switch(widget.file.ext){
      case "heic":
        image=true;
        break;
      case "jpg":
        image=true;
        break;
      case "png":
        image=true;
        break;
      case "jpeg":
        image=true;
        break;


    }
    return image? Container(
      child: Image.asset("assets/image/conector.png"),
    ) :Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          GestureDetector(
            child:playerState!=null?playerState!.index==3||playerState!.index==2? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff)
                ),
                child: Image.asset("assets/image/play.png",height: 30,color: Colors.white,)
            ):Container(width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfffffff)
                ),
                child: Image.asset("assets/image/pause.png",height: 30,color: Colors.white,)
            ):Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff)
                ),
                child: Image.asset("assets/image/play.png",height: 30,color: Colors.white,)
            ),
            onTap: ()async{
              int result = await audioPlayer.play("https://api.inf.market/files/unknown/24-12-2021/users/guest/p2hibds645zfs4e2fiij-audio.wav");

              if(playerState!=null){
                if(
                playerState!.index==1
                ){
                  audioPlayer.pause();
                }
                if(
                playerState!.index==2
                ){
                  audioPlayer.resume();
                }
                if(
                playerState!.index==3
                ){
                  int result = await audioPlayer.play("https://api.inf.market/files/unknown/24-12-2021/users/guest/p2hibds645zfs4e2fiij-audio.wav");
                }
              }else{
                int result = await audioPlayer.play("https://api.inf.market/files/unknown/24-12-2021/users/guest/p2hibds645zfs4e2fiij-audio.wav");
              }

            },
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "00:15",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff959595)
                      ),
                    ),
                    Text(
                      "18:45",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff959595)
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width-168,
                child: Row(
                  children: [
                    Container(
                      width: ((Get.width-178)/widget.file.duration!.toInt())*duration,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6)
                          ),
                          color: Colors.white
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                    ),
                    Container(
                      width: (Get.width-178)-((Get.width-178)/widget.file.duration!.toInt())*duration,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffDE7C7C)
                      ),
                    )
                  ],
                ),
              ),

              Container(
                width: Get.width-168,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${formatedTime(duration)}",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      "${formatedTime(widget.file.duration)}",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  AudioPlayer audioPlayer = AudioPlayer();



  PlayerState? playerState;
  int duration=0;
  @override
  void initState() {
    audioPlayer.onDurationChanged.listen((Duration  p){
      print('onDurationChanged $p');
    });
    audioPlayer.onAudioPositionChanged.listen((Duration  p){
      print('Current position: ${p.inSeconds}');
      setState(() {
        duration=p.inSeconds;
      });
    });
    audioPlayer.onPlayerStateChanged.listen((PlayerState s){
      print('Current player state: $s');
      print('Current player state: ${s.index}');
      setState(() {
        playerState=s;
      });
    });
    audioPlayer.onPlayerCompletion.listen((event) {
    });
  }
  getWidth(width,max,min){
    return (width/max)*min;
  }
  String formatedTime( secTime) {
    String getParsedTime(String time) {
      if (time.length <= 1) return "0$time";
      return time;
    }
    print(secTime);
    int min = secTime ~/ 60;
    int sec = secTime % 60;

    String parsedTime =
        getParsedTime(min.toString()) + " : " + getParsedTime(sec.toString());

    return parsedTime;
  }
}
