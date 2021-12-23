import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';

class MainDataProfilePersonDataScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainDataProfilePersonDataScreenState();
  }

}
class MainDataProfilePersonDataScreenState extends State<MainDataProfilePersonDataScreen>{
  ProfileController _profileController =Get.find();
  BackendController _backendController =Get.find();
  @override
  void initState() {
    if(_profileController.dataProfile!.user!.lastname!=null){
      controller1.text="${_profileController.dataProfile!.user!.lastname}";
      print(_profileController.dataProfile!.user!.lastname);
    }
    if(_profileController.dataProfile!.user!.firstname!=null){
      controller2.text="${_profileController.dataProfile!.user!.firstname}";
    }
    if(_profileController.dataProfile!.user!.middlename!=null){
      controller3.text="${_profileController.dataProfile!.user!.middlename}";
    }
    if(_profileController.dataProfile!.user!.phone!=null){
      controller4.text="${_profileController.dataProfile!.user!.phone}";
    }
    if(_profileController.dataProfile!.user!.email!=null){
      controller5.text="${_profileController.dataProfile!.user!.email}";
    }
    focusNode1.addListener(() {
      setState(() {
      });
      if(focusNode1.hasFocus
          ||focusNode2.hasFocus
          ||focusNode3.hasFocus
          ||focusNode4.hasFocus
          ||focusNode5.hasFocus){
        print("editDone1");

      }
      else {
        print("editFinish1");
        try {
         _profileController.updateUser(controller1.text,controller2.text,controller3.text,controller4.text,controller5.text,);

        } catch (e) {
          print("error");
          print(e);
        }
      }
    });
    focusNode2.addListener(() {
      setState(() {

      });
      if(focusNode1.hasFocus
          ||focusNode2.hasFocus
          ||focusNode3.hasFocus
          ||focusNode4.hasFocus
          ||focusNode5.hasFocus){
        print("editDone2");
      }
      else{
        print("editFinish2");
        try {
          _profileController.updateUser(controller1.text,controller2.text,controller3.text,controller4.text,controller5.text,);

        } catch (e) {
          print("error");
          print(e);
        }
      }
    });
    focusNode3.addListener(() {
      setState(() {

      });
      if(focusNode1.hasFocus
          ||focusNode2.hasFocus
          ||focusNode3.hasFocus
          ||focusNode4.hasFocus
          ||focusNode5.hasFocus){
        print("editDone3");
      }else{
        print("editFinish3");
        try {
          _profileController.updateUser(controller1.text,controller2.text,controller3.text,controller4.text,controller5.text,);

        } catch (e) {
          print("error");
          print(e);
        }
      }
    });
    focusNode4.addListener(() {
      setState(() {

      });
      if(focusNode1.hasFocus
          ||focusNode2.hasFocus
          ||focusNode3.hasFocus
          ||focusNode4.hasFocus
          ||focusNode5.hasFocus){
        print("editDone4");
      }else{
        print("editFinish4");
        try {
          _profileController.updateUser(controller1.text,controller2.text,controller3.text,controller4.text,controller5.text,);

        } catch (e) {
          print("error");
          print(e);
        }
      }
    });
    focusNode5.addListener(() {
      setState(() {

      });
      if(focusNode1.hasFocus
          ||focusNode2.hasFocus
          ||focusNode3.hasFocus
          ||focusNode4.hasFocus
          ||focusNode5.hasFocus){
        print("editDone5");
      }else{
        print("editFinish5");
        try {
          _profileController.updateUser(controller1.text,controller2.text,controller3.text,controller4.text,controller5.text,);

        } catch (e) {
          print("error");
          print(e);
        }
      }
    });
  }
  var focusNode1=new FocusNode();
  var focusNode2=new FocusNode();
  var focusNode3=new FocusNode();
  var focusNode4=new FocusNode();
  var focusNode5=new FocusNode();
  TextEditingController controller1=new TextEditingController();
  TextEditingController controller2=new TextEditingController();
  TextEditingController controller3=new TextEditingController();
  TextEditingController controller4=new TextEditingController();
  TextEditingController controller5=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Column(
          children: [
            getFieldData(
                controller:controller1,
                hintText: "Фамилия",
              focusNode: focusNode1,
              focusNodeNext: focusNode1
            ),
            getFieldData(
                controller:controller2,
                hintText: "Имя",
                focusNode: focusNode2,
                focusNodeNext: focusNode2
            ),
            getFieldData(
                controller:controller3,
                hintText: "Отчество",
                focusNode: focusNode3,
                focusNodeNext: focusNode3
            ),
            SizedBox(height: 28,),

            getFieldData(
                controller:controller4,
                hintText: "+ 7 (900) 000-00-00",
                focusNode: focusNode4,
                focusNodeNext: focusNode4
            ),
            getFieldData(
                controller:controller5,
                hintText: "E-mail",
                focusNode: focusNode5,
                focusNodeNext: focusNode5
            ),


            SizedBox(height: 27,),
            getRowInfoMainData(
                text: "Запросов:",
                number: _profileController.dataProfile!.counters!=null?_profileController.dataProfile!.counters!.orderRequestsCount??"0":"0"
            ),
            getRowInfoMainData(
                text: "Покупок:",
                number: _profileController.dataProfile!.counters!=null?_profileController.dataProfile!.counters!.ordersCount??"0":"0"
            ),
            getRowInfoMainData(
                text: "Возвратов:",
                number: _profileController.dataProfile!.counters!=null?_profileController.dataProfile!.counters!.refundsCount??"0":"0"
            ),
            getRowInfoMainData(
                text: "Полученных жалоб:",
                number: _profileController.dataProfile!.counters!=null?_profileController.dataProfile!.counters!.receivedComplaintsCount??"0":"0"
            ),
            getRowInfoMainData(
                text: "Отправленных жалоб:",
                number: _profileController.dataProfile!.counters!=null?_profileController.dataProfile!.counters!.sentComplaintsCount??"0":"0"
            ),
          ],
        )
      ],
    );
  }

  Widget getRowInfoMainData({text, number}){
    print("${_profileController.dataProfile!.counters}");
    return Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 12
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$text",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    color: Color(0xff2e2e33)
                ),
              ),
              Text(
                "$number",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                    color:Color(0xff2e2e33)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Widget getFieldData(
      {
        controller,
        hintText,
        focusNode,
        focusNodeNext
      }
      ){
    return  Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          border: Border.all(
              color: Color(0xffC4C4C4),
              width: 1
          )
      ),
      height: 48,
      child: GestureDetector(
        child: Row(
          children: [
            Container(
                width: Get.width-81,
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                height: 48,
                child: TextField(
                  focusNode: focusNode,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff2e2e33),
                      fontFamily: "Roboto"
                  ),
                  controller: controller,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: "$hintText",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff959595),
                        fontFamily: "Roboto"

                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                )
            ),
            focusNode1.hasFocus
                ||focusNode2.hasFocus
                ||focusNode3.hasFocus
                ||focusNode4.hasFocus
                ||focusNode5.hasFocus?Container():
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        left: BorderSide(
                            color: Color(0xffC4C4C4),
                            width: 1
                        )
                    )
                ),margin: EdgeInsets.only(right: 3),
                width: 36,
                height: 48,
                padding: EdgeInsets.only(
                    left: 10,
                    right: 7
                ),
                child: Center(
                  child: Image.asset("assets/image/pencile.png"),
                ),
              ),
              onTap: (){
                FocusScope.of(context).requestFocus(focusNodeNext);
              },
            )
          ],
        ),
        onTap: (){

        },
      ),
    );

  }

}