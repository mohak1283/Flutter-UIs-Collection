import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child: Center(
        child: Text('Shopping cart Screen', style: TextStyle(
          fontSize: 24.0
        ),),
      ),
    );
  }
}