import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App UI",
      home: HomeScreen(),
    );
  }
}
