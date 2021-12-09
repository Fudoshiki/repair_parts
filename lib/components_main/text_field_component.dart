import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldCustom extends StatefulWidget{


  String label;
  String text;
  int? maxLines;
  bool values =false;

  TextFieldCustom(this.label, this.text,{
    @required this.maxLines,  values
  }){
    if(values==null){
      this.values=false;
    }
    else
      this.values=values;
  }

  @override
  State<StatefulWidget> createState() {
    return TextFieldCustomState();
  }


}
class TextFieldCustomState extends State<TextFieldCustom>{
  FocusNode _focusNode=new FocusNode();
  bool val=false;
  var controller;
  @override
  void initState() {
    print("${widget.label} ${widget.maxLines}");
    controller=new TextEditingController();
    controller.text=(widget.text!=null?widget.text:"");
    _focusNode.addListener(() {
      if(
      _focusNode.hasFocus
      )
      setState(() {
        val=true;
      });
      else
        setState(() {
          val=false;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:widget.values?Color(0xffE6332A) :Color(0xffD6D6D6),
          width: 1
        ),
        borderRadius: BorderRadius.circular(6)
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 12,
        bottom: 8
      ),
      child: TextField(
        focusNode: _focusNode,
        controller: controller,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff2e2e33),
          fontFamily: "Roboto",
        ),
        onChanged: (t){
          setState(() {

          });
        },
        minLines: 1,
        maxLines: widget.maxLines==null?1:widget.maxLines,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: 0,
          ),
          isDense: true,
          labelText: widget.label==""?null:widget.label,
          labelStyle: TextStyle(
              fontWeight: _focusNode.hasFocus? FontWeight.w600:controller.text!=""?FontWeight.w600:FontWeight.w400,
              fontSize:_focusNode.hasFocus? 12:controller.text!=""?12:14,
              color: _focusNode.hasFocus? Color(0xff717171):controller.text!=""?Color(0xff717171) :Color(0xff959595),
              fontFamily: "Roboto",
              height: _focusNode.hasFocus? 0.4:controller.text!=""?0.4:1,
          ),

          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }


}