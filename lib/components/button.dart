import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String s;
  Button({this.s});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
        ),
        height: 70.0,
        child: Center(
          child: Text('$s',style: TextStyle(
            fontSize: 24.0
          ),),
        ),
      ),
    );
  }
}
