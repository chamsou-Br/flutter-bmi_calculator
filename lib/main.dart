import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/screen0.dart';
import 'package:bmi_calculator/screens/screen1.dart';
import 'constante.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            primaryColor: colorPrimary,
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            accentColor: Colors.lightBlue),
        home: Screen0());
  }
}
