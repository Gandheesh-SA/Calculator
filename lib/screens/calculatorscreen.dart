import 'package:flutter/material.dart';
import 'package:calculator/components/button.dart';
class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                
                color: Color(0xFFFFE9EC),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
          ),),
          SizedBox(height: 20.0,),
          Row(
            children: [
                Button(s: 'D',),
                Button(s: '^'),
                Button(s: '%'),
                Button(s:'/'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button(s:'7'),
              Button(s:'8'),
              Button(s:'9'),
              Button(s:'X'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button(s:'4'),
              Button(s:'5'),
              Button(s:'6'),
              Button(s:'-'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button(s:'1'),
              Button(s:'2'),
              Button(s:'3'),
              Button(s:'+'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button(s:'0'),
              Button(s:'.'),
              Button(s:'AC'),
              Button(s:'='),
            ],
          ),
        ],
      ),
    );
  }
}
