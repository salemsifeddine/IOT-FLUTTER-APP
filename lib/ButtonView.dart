import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iot_smart_home/Layout.dart';

class ButtonView extends StatelessWidget {
  final bool? isActive;
  final String? text;

  const ButtonView({Key? key, required this.isActive,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return  Align(
      child: Container(
        padding:const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isActive==false? Colors.transparent:Colors.indigo,
          border: Border.all(width: 2.5,color:Colors.indigo ),
          borderRadius: BorderRadius.circular(25),
        ),
        width: size.width*0.43,
        child: Text("$text", style:  TextStyle(color: isActive!=false?Colors.white:Colors.black,fontSize: 24,fontWeight: FontWeight.w500),textAlign:TextAlign.center,),
      ),
    );
  }
}
