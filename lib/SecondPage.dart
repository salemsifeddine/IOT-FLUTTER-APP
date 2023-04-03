import 'package:flutter/material.dart';
import 'package:iot_smart_home/ButtonView.dart';
import 'package:iot_smart_home/Layout.dart';
import 'package:iot_smart_home/slider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    double heatVal =13;
    return   Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: const Icon(Icons.arrow_back_ios, color: Colors.indigo,size: 29,),
                  ),
                  const RotatedBox(quarterTurns: 3,child:Icon(Icons.bar_chart_rounded,size: 28,color: Colors.indigo),),


                ],
              ),
              Expanded(child: ListView(
                children: [
                  const SizedBox(height: 40,),
                  CircularPercentIndicator(
                    radius: 180,
                    lineWidth: 14,
                    percent: 0.65,
                    progressColor: Colors.indigo,
                    center: const Text('75°',
                      style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Center(
                    child: Text("Temperature",style:TextStyle(color: Colors.black54, fontSize: 24)),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ButtonView(isActive: true, text: "GENERAL",),

                      ButtonView(isActive: false, text: "SERVICES",),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(

                    width: size.width,
                    height: 150,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:   [
                        const Text("Heating", style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 22),textAlign: TextAlign.start,),
                        const SliderComp(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: const [
                            Text("0%", style: TextStyle(color: Colors.black54,fontSize: 22),),
                            Text("15%", style: TextStyle(color: Colors.black54,fontSize: 22)),
                            Text("30%", style: TextStyle(color: Colors.black54,fontSize: 22)),
                          ],
                        ),
                      ],
                    ),

                  ),
                  const SizedBox(height: 20,),
                  Container(

                    width: size.width,
                    height: 150,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:   [
                        const Text("FAN SPEED", style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 22),textAlign: TextAlign.start,),
                        const SliderComp(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: const [
                            Text("LOW", style: TextStyle(color: Colors.black54,fontSize: 22),),
                            Text("MEDIUM", style: TextStyle(color: Colors.black54,fontSize: 22)),
                            Text("HIGH", style: TextStyle(color: Colors.black54,fontSize: 22)),
                          ],
                        ),
                      ],
                    ),

                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        width: size.width*0.25,
                        height:size.width*0.25,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset("assets/images/fan-2.png",scale: 0.7,),
                      ),
                      Container(

                        width: size.width*0.25,
                        height:size.width*0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset("assets/images/fan-1.png",scale: 0.7,),
                      ),
                      Container(

                        width: size.width*0.25,
                        height:size.width*0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset("assets/images/fan-1.png",scale: 0.7,),
                      ),
                    ],
                  )

                ],
              ))

            ],
          ),
        ),
      ),
    );
  }
}






