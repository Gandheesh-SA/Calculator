import 'package:calculator/screens/calculatorscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFfc8eac),
          title: Text('Calculator'),
          centerTitle: true,
          actions: [
            IconButton(icon: FaIcon(FontAwesomeIcons.moon), onPressed: (){}),
          ],
        ),
        body: CalculatorScreen(),
      ),
    );
  }
}
