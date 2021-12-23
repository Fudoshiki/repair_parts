import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/models/files.dart';
import 'package:repair_parts/models/last_message.dart';
import 'package:repair_parts/models/rows_chat.dart';
import 'package:repair_parts/moduls/buyer/backet/controller/backet_controller.dart';
import 'package:repair_parts/moduls/buyer/home/controller/home_controller.dart';
import 'package:repair_parts/components_main/bottom_item.dart';
import 'package:repair_parts/moduls/buyer/message/controller/message_controller.dart';
import 'package:html/parser.dart';
class MessagePage extends StatelessWidget{
  MessageController _messageController = Get.find();
  bool? bottom;
  MessagePage({@required this.bottom});
  BottomNavigationItem _bottomNavigationitem = BottomNavigationItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom!=null? SizedBox(height: 70,

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
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 60
              ),
              child: Text(
                "Диалоги",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Color(0xff2e2e33),
                    fontFamily: "Roboto"
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20
              ),
              padding: EdgeInsets.only(
                  bottom: 19
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xffE7E7E7),
                          width: 1
                      )
                  )
              ),
              child: Container(
                height: 32,
                margin: EdgeInsets.only(
                    top: 10
                ),
                padding: EdgeInsets.only(
                    left: 20
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: Color(0xffD6D6D6),
                        width: 1
                    )
                ),
                child: TextField(
                  scrollPadding: EdgeInsets.all(0),
                  style: TextStyle(
                      color: Color(0xff2e2e33),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      height: 1.5
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top:8,bottom: 10
                    ),
                      hintText: "Поиск",
                      hintStyle: TextStyle(
                          color: Color(0xff959595),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      suffixIcon: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 17,
                            vertical: 9
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
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    GestureDetector(
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 20,
                              right: 20
                          ),
                          height: 100,
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffE7E7E7),
                                      width: 1
                                  )
                              )
                          ),//photo_call.png
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/default-avatar.png"
                                        ),fit: BoxFit.cover
                                    )
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Inf",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Заказ ${_messageController.dataNotofication.rows![0].data!.idOrder}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff2e2e33),
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 13,
                                              height: 10,
                                              margin: EdgeInsets.only(
                                                  right: 5
                                              ),
                                              child: Image.asset("assets/image/done1.png"),
                                            ),
                                            Text(
                                              "${DateTime.parse("${_messageController.dataNotofication.rows![0].createdAt}").day>10
                                                  ?DateTime.parse("${_messageController.dataNotofication.rows![0].createdAt}").day
                                                  :"0"+DateTime.parse("${_messageController.dataNotofication.rows![0].createdAt}").day.toString()}."
                                                  "${DateTime.parse("${_messageController.dataNotofication.rows![0].createdAt}").month}."
                                                  "${DateTime.parse("${_messageController.dataNotofication.rows![0].createdAt}").year}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff959595),
                                                  fontFamily: "Roboto"
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    _messageController.dataNotofication.count==0?Text(
                                       "нет уведомлений",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff717171),
                                          fontFamily: "Roboto"
                                      ),
                                    ):  Text( _messageController.dataNotofication.rows![0].type=="paymentRefundRequestPaid"
                                        ?'Произведен возврат денежных средств ${_messageController.dataNotofication.rows![0].data!.refundSum}'
                                        :_messageController.dataNotofication.rows![0].type=='offerToOrderRequest'
                                        ?'Получено предложение'
                                        :'',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Color(0xff717171),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto"
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                      onTap: (){
                      },
                    ),
                    _messageController.dataChat.count==0
                        ?Container()
                        :Column(
                      children: [
                        ..._messageController.dataChat.rows!.map((e) => getRowChatMessage(e))
                      ],
                    )


///
                    // GestureDetector(
                    //   child: Container(
                    //       height: 100,
                    //       margin: EdgeInsets.only(
                    //           left: 20,
                    //           right: 20
                    //       ),
                    //       padding: EdgeInsets.only(
                    //         top: 15,
                    //       ),
                    //       decoration: BoxDecoration(
                    //           border: Border(
                    //               bottom: BorderSide(
                    //                   color: Color(0xffE7E7E7),
                    //                   width: 1
                    //               )
                    //           )
                    //       ),
                    //       child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Container(
                    //               width: 40,
                    //               height: 40,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(6),
                    //                   image: DecorationImage(
                    //                       image: AssetImage(
                    //                           "assets/image/photo_call.png"
                    //                       ),fit: BoxFit.cover
                    //                   )
                    //               ),
                    //             ),
                    //             SizedBox(width: 10,),
                    //             Expanded(
                    //                 child:Column(
                    //                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                   children: [
                    //                     Row(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                       children: [
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                             Text(
                    //                               "Имя продавца",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w700,
                    //                                   fontSize: 16,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //                             SizedBox(
                    //                               height: 5,
                    //                             ),
                    //                             Text(
                    //                               "Заказ 1-3",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             )
                    //                           ],
                    //                         ),
                    //                         Row(
                    //                           children: [
                    //
                    //                             Text(
                    //                               "15.03.2021",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff959595),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //
                    //                           ],
                    //                         )
                    //                       ],
                    //                     ),
                    //                     SizedBox(
                    //                       height: 10,
                    //                     ),
                    //                     Row(
                    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                       children: [
                    //                         Row(
                    //                           children: [
                    //                             Container(
                    //                               width: 15,
                    //                               height: 17,
                    //                               child: Image.asset("assets/image/photoe.png"),
                    //                             ),
                    //                             SizedBox(
                    //                               width: 10,
                    //                             ),
                    //                             Text(
                    //                               "Фото",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff717171),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                         Container(
                    //                           width: 34,
                    //                           height: 24,
                    //                           decoration: BoxDecoration(
                    //                               color: Color(0xffE6332A),
                    //                               borderRadius: BorderRadius.circular(50)
                    //                           ),
                    //                           child: Center(
                    //                             child: Text(
                    //                               "100",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w600,
                    //                                   fontSize: 13,
                    //                                   color: Colors.white,
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         )
                    //
                    //                       ],
                    //                     )
                    //                   ],
                    //                 )
                    //             )
                    //           ]
                    //       )
                    //   ),
                    //   onTap: (){
                    //   },
                    // ),
                    //
                    // GestureDetector(
                    //   child: Container(
                    //       height: 100,
                    //       margin: EdgeInsets.only(
                    //           left: 20,
                    //           right: 20
                    //       ),
                    //       padding: EdgeInsets.only(
                    //           top: 15,
                    //           bottom: 12
                    //       ),
                    //       decoration: BoxDecoration(
                    //           border: Border(
                    //               bottom: BorderSide(
                    //                   color: Color(0xffE7E7E7),
                    //                   width: 1
                    //               )
                    //           )
                    //       ),
                    //       child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Container(
                    //               width: 40,
                    //               height: 40,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(6),
                    //                   image: DecorationImage(
                    //                       image: AssetImage(
                    //                           "assets/image/photo_call.png"
                    //                       ),fit: BoxFit.cover
                    //                   )
                    //               ),
                    //             ),
                    //             SizedBox(width: 10,),
                    //             Expanded(
                    //                 child:Column(
                    //                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                   children: [
                    //                     Row(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                       children: [
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                             Text(
                    //                               "Имя продавца",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w700,
                    //                                   fontSize: 16,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //                             SizedBox(
                    //                               height: 5,
                    //                             ),
                    //                             Text(
                    //                               "Заказ 1-3",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             )
                    //                           ],
                    //                         ),
                    //                         Row(
                    //                           children: [
                    //                             Container(
                    //                               width: 16,
                    //                               height: 10,
                    //                               margin: EdgeInsets.only(
                    //                                   right: 5
                    //                               ),
                    //                               child: Image.asset("assets/image/done2.png"),
                    //                             ),
                    //                             Text(
                    //                               "04.03.2021",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff959595),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             )
                    //                           ],
                    //                         )
                    //                       ],
                    //                     ),
                    //                     SizedBox(
                    //                       height: 10,
                    //                     ),
                    //                     Row(
                    //                       children: [
                    //                         Container(
                    //                           width: 15,
                    //                           height: 17,
                    //                           child: Image.asset("assets/image/mes_mic.png"),
                    //                         ),
                    //                         SizedBox(
                    //                           width: 10,
                    //                         ),
                    //                         Text(
                    //                           "Голосовое сообщение",
                    //                           style: TextStyle(
                    //                               fontWeight: FontWeight.w400,
                    //                               fontSize: 14,
                    //                               color: Color(0xff717171),
                    //                               fontFamily: "Roboto"
                    //                           ),
                    //                         )
                    //                       ],
                    //                     ),
                    //
                    //
                    //                   ],
                    //                 ))])
                    //   ),
                    //   onTap: (){
                    //   },
                    // ),
                    //
                    // GestureDetector(
                    //   child: Container(
                    //       height: 100,
                    //
                    //       margin: EdgeInsets.only(
                    //           left: 20,
                    //           right: 20
                    //       ),
                    //       padding: EdgeInsets.only(
                    //           top: 15,
                    //           bottom: 12
                    //       ),
                    //       decoration: BoxDecoration(
                    //           border: Border(
                    //               bottom: BorderSide(
                    //                   color: Color(0xffE7E7E7),
                    //                   width: 1
                    //               )
                    //           )
                    //       ),
                    //       child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Container(
                    //               width: 40,
                    //               height: 40,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(6),
                    //                   image: DecorationImage(
                    //                       image: AssetImage(
                    //                           "assets/image/photo_call.png"
                    //                       ),fit: BoxFit.cover
                    //                   )
                    //               ),
                    //             ),
                    //             SizedBox(width: 10,),
                    //             Expanded(
                    //                 child:Column(
                    //                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                   children: [
                    //                     Row(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                       children: [
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                             Text(
                    //                               "Имя продавца",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w700,
                    //                                   fontSize: 16,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             ),
                    //                             SizedBox(
                    //                               height: 5,
                    //                             ),
                    //                             Text(
                    //                               "Заказ 1-3",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff2e2e33),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             )
                    //                           ],
                    //                         ),
                    //                         Row(
                    //                           children: [
                    //                             Container(
                    //                               width: 16,
                    //                               height: 10,
                    //                               margin: EdgeInsets.only(
                    //                                   right: 5
                    //                               ),
                    //                               child: Image.asset("assets/image/done2.png"),
                    //                             ),
                    //                             Text(
                    //                               "04.03.2021",
                    //                               style: TextStyle(
                    //                                   fontWeight: FontWeight.w400,
                    //                                   fontSize: 14,
                    //                                   color: Color(0xff959595),
                    //                                   fontFamily: "Roboto"
                    //                               ),
                    //                             )
                    //                           ],
                    //                         )
                    //                       ],
                    //                     ),
                    //                     SizedBox(
                    //                       height: 10,
                    //                     ),
                    //                     Row(
                    //                       children: [
                    //                         Container(
                    //                           width: 15,
                    //                           height: 17,
                    //                           child: Image.asset("assets/image/movie.png"),
                    //                         ),
                    //                         SizedBox(
                    //                           width: 10,
                    //                         ),
                    //                         Text(
                    //                           "Видео",
                    //                           style: TextStyle(
                    //                               fontWeight: FontWeight.w400,
                    //                               fontSize: 14,
                    //                               color: Color(0xff717171),
                    //                               fontFamily: "Roboto"
                    //                           ),
                    //                         )
                    //                       ],
                    //                     ),
                    //
                    //
                    //                   ],
                    //                 ))])
                    //   ),
                    //   onTap: (){
                    //   },
                    // ),


                  ],
                )
            )
          ],
        )
    );
  }
  Widget getRowChatMessage(RowsChat message){
    return GestureDetector(
      child: Container(
          height: 100,
          margin: EdgeInsets.only(
              left: 20,
              right: 20
          ),
          padding: EdgeInsets.only(
            top: 15,
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
                message.members![0].user!.avatar!=null?Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: NetworkImage(
                              "${message.members![0].user!.avatar}"
                          ),fit: BoxFit.cover
                      )
                  ),
                ):Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: AssetImage(
                    "assets/image/default-avatar.png"
                ),fit: BoxFit.cover
            )
        ),
      ),
                SizedBox(width: 10,),
                Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${message.members![0].user!.lastname??""} ${message.members![0].user!.firstname??""}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff2e2e33),
                                      fontFamily: "Roboto"
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                // Text(
                                //   "Заказ 1-5",
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.w400,
                                //       fontSize: 14,
                                //       color: Color(0xff2e2e33),
                                //       fontFamily: "Roboto"
                                //   ),
                                // )
                              ],
                            ),
                            Text(
                              "${DateTime.parse("${message.lastMessageCreatedAt}").day>10
                                  ?DateTime.parse("${message.lastMessageCreatedAt}").day
                                  :"0"+DateTime.parse("${message.lastMessageCreatedAt}").day.toString()}."
                                  "${DateTime.parse("${message.lastMessageCreatedAt}").month}."
                                  "${DateTime.parse("${message.lastMessageCreatedAt}").year}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff959595),
                                  fontFamily: "Roboto"
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            message.lastMessage!=null
                                ?  getLatMessage(message.lastMessage!)
                                :getLatMessage(new LastMessage(text: "Ещё нет сообщений",files: [])),
                            message.unreadMessagesCount==0?Container():Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6332A),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Text(
                                  "${message.unreadMessagesCount}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                            )

                          ],
                        )
                      ],
                    )
                )
              ]
          )
      ),
      onTap: (){
      },
    );
  }
  Widget getLatMessage(LastMessage last){
    if(last.files!.length==0){
      return Text(
        "${parse(last.text).documentElement!.text}",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff717171),
            fontFamily: "Roboto"
        ),
      );
    }
    return Row(
      children: [
        Container(
          width: 15,
          height: 17,
          child: Image.asset("assets/image/${getImageFile(last.files![0])}"),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "${"${last.files![0].name}".substring(0,20)}.${last.files![0].ext}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff717171),
              fontFamily: "Roboto"
          ),
        ),
      ],
    );
  }
  String getImageFile(Files file){
    print(file.ext);
    switch (file.ext){
      case "heic":
        return "photoe.png";
      case "jpg":
        return "photoe.png";
      case "png":
        return "photoe.png";
      case "jpeg":
        return "photoe.png";
      case "pdf":
        return "pdf.png";

    }
    return "";
  }

}