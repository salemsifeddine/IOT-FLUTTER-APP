import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderComp extends StatefulWidget {
  const SliderComp({Key? key}) : super(key: key);

  @override
  State<SliderComp> createState() => _SliderCompState();
}

class _SliderCompState extends State<SliderComp> {
  double value =13;
  @override
  Widget build(BuildContext context) {
    return Slider(value: value, onChanged: (value)=>setState(() {this.value=value;}),max: 30,);
  }
}
