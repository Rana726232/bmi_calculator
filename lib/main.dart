import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Color(0xffffffff),
            )),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
