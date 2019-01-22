import 'package:flutter/material.dart';

class FindProductScreen extends StatefulWidget {
  _FindProductScreenState createState() => _FindProductScreenState();
}

class _FindProductScreenState extends State<FindProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Find Product Screen', style: TextStyle(fontSize: 24.0)),
        ),
      ),
    );
  }
}