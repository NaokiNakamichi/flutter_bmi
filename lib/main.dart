import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink[100],
        accentColor:  Colors.purple,
        scaffoldBackgroundColor: Colors.pink[100],
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))
      ),
      home: InputPage(),
    );
  }
}

