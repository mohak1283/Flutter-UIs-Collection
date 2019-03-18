import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  final number;
  final title;

  const StatsWidget({this.number, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          number,
          style: TextStyle(fontSize: 25.0, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 15.0, color: Colors.grey),
          ),
        )
      ],
    );
  }
}