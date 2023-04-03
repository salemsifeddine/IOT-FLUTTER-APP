import 'package:flutter/material.dart';
import 'package:iot_smart_home/Home_view.dart';
import 'package:iot_smart_home/Layout.dart';
import 'package:iot_smart_home/SecondPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
       backgroundColor: Colors.cyanAccent,


      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),

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
            ),
            Expanded(child: ListView(
              children: [
                const SizedBox(height: 20,),
                Center(
                  child: Image.asset("assets/images/banner.png",scale: 1.2,height: 140,),
                ),
                const SizedBox(height: 20,),
                const Center(
                  child: Text("Smart Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                ),
                const SizedBox(height: 14,),
                const Text("SERVICES",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                const SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children:   [
                    const HomeWid(title: "Energy",image: "energy.png",),
                    InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const SecondPage()));

                        },
                      child: const HomeWid(title: "Temperature",
                        image: "temperature.png",
                        colorWid:true,

                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: const [
                    HomeWid(title: "Water",image: "water.png",),
                    HomeWid(title: "Entertainment",image: "entertainment.png",),
                  ],
                )

              ],
            ))
          ],
        ),
      ),
    );
  }
}


