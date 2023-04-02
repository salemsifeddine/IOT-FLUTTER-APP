import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 45,horizontal: 20),

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("HELLO JOE",style: TextStyle(color: Colors.indigo,fontSize:27,fontWeight: FontWeight.bold),),

              RotatedBox(quarterTurns: 3,
                child:Icon(Icons.bar_chart_rounded, size: 28,color: Colors.indigo,)
                ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
