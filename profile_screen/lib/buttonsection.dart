import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            height: 50.0,
            width: 230.0,
            child: Center(
                child: Text(
              'Follow',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.deepPurple[300]])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 50.0,
              width: 60.0,
              child: Icon(Icons.send),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300]),
            ),
          ),
        )
      ],
    );
  }
}