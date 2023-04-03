import 'package:flutter/material.dart';
import 'package:iot_smart_home/Layout.dart';

class HomeWid extends StatelessWidget {
  final String? title;
  final String? image;
  final bool? colorWid;
  final VoidCallback? onTap;
  const HomeWid({Key? key, this.title, this.image, this.colorWid,this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(

        width:size.width*0.42,
        height: size.width*0.42,

        decoration:BoxDecoration(
            color: colorWid==null?Colors.white:Colors.indigo,
            borderRadius: BorderRadius.circular(25)
        ) ,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/$image",scale: 0.6),
            const SizedBox(height: 14,),

            Text("$title", style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
