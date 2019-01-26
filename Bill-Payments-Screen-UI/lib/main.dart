import 'package:flutter/material.dart';
import 'package:payments_screens/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bill Payments Screen",
      home: HomeScreen(),
    );
  }
}

