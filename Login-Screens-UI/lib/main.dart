import 'package:flutter/material.dart';
import 'package:login_screens/screens/first_login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstLoginScreen(),
    );
  }
}