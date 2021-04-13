import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int a;
  int b;
  String output='';
  String res;
  String operation;
  void onButtonClick(String buttonText){
    if(buttonText == 'C')
      {
        output=' ';
        a=0; b=0; res =' ';
      } else if(buttonText=="+" || buttonText=="-" || buttonText=="X" || buttonText=="/" || buttonText=="%" || buttonText=="^" ){
            a= int.parse(output);
            res =' ';
            operation=buttonText;
      } else if(buttonText== "="){

         b= int.parse(output);
         if(operation=="+")
           {
             res = (a+b).toString();
           }
         if(operation=="-")
         {
           res = (a-b).toString();
         }
         if(operation=="X")
         {
           res = (a*b).toString();
         }
         if(operation=="/")
         {
           res = (a/b).toString();
         }
         if(operation=="%")
         {
           res = (a%b).toString();
         }
         if(operation=="^")
         {
           res = pow(a,b).toString();
         }

    } else{
      res= int.parse(output + buttonText).toString();
    }
    setState(() {
      output=res;
    });
  }
  // ignore: non_constant_identifier_names
  Widget Button( String buttonValue){
    return Expanded(
      child: GestureDetector(
        onTap: () => onButtonClick(buttonValue),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0XFF666666),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 6.0),
              ),
            ],
          ),
          height: 70.0,
          child: Center(
            child: Text('$buttonValue',style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),),
          ),
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFF666666),
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(right: 10.0,bottom: 10.0),
            child: Text('$output', style: TextStyle(
              fontSize: 42.0,
              color: Colors.white,
            ),),
          ),
          ),
          SizedBox(height: 20.0,),
          Row(
            children: [
                Button('√',),
                Button('^'),
                Button('%'),
                Button('/'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button('7'),
              Button('8'),
              Button('9'),
              Button('X'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button('4'),
              Button('5'),
              Button('6'),
              Button('-'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button('1'),
              Button('2'),
              Button('3'),
              Button('+'),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Button('0'),
              Button('.'),
              Button('C'),
              Button('='),
            ],
          ),
        ],
      ),
    );
  }
}
