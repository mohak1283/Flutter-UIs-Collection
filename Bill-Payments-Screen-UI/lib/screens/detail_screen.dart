import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: OrangeClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 250.0,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
          ),
          ClipPath(
            clipper: BlackClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width - 230.0,
              height: MediaQuery.of(context).size.height - 250.0,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Material(
              elevation: 30.0,
              color: Colors.white12,
              borderRadius: BorderRadius.circular(18.0),
              child: Container(
                width: 320.0,
                height: 330.0,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(18.0)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ClipPath(
                  clipper: ZigZagClipper(),
                  child: Container(
                    width: 330.0,
                    height: 530.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/dart.jpg'))),
                          ),
                        ),
                        Text('Success!',
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text('Payment is completed for 2 bills.',
                              style: TextStyle(fontSize: 15.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Container(
                            width: 300.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0)),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 35.0,
                                  ),
                                  title: Text(
                                    'KenZen Power',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  subtitle: Text(
                                    'Txn ID: 34374287',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      '\$1240.00',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 35.0,
                                  ),
                                  title: Text(
                                    'Total Gas',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  subtitle: Text(
                                    'Txn ID: 64234285',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      '\$1490.00',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text(
                            'Total Amount',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '\$2730.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.indigo[700]),
                          child: Center(
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                              color: Colors.indigo[700], fontSize: 12.0),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.indigo[700]),
                          child: Center(
                            child: Icon(
                              Icons.print,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                        Text(
                          'Print',
                          style: TextStyle(
                              color: Colors.indigo[700], fontSize: 12.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () => Navigator.pop(context),
                    child: Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.indigo[700], width: 1.5),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'Done',
                        style:
                            TextStyle(color: Colors.indigo[700], fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ZigZagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(3.0, size.height - 10.0);

    var firstControlPoint = Offset(23.0, size.height - 40.0);
    var firstEndPoint = Offset(38.0, size.height - 5.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(58.0, size.height - 40.0);
    var secondEndPoint = Offset(75.0, size.height - 5.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(93.0, size.height - 40.0);
    var thirdEndPoint = Offset(110.0, size.height - 5.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    var fourthControlPoint = Offset(128.0, size.height - 40.0);
    var fourthEndPoint = Offset(150.0, size.height - 5.0);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    var fifthControlPoint = Offset(168.0, size.height - 40.0);
    var fifthEndPoint = Offset(185.0, size.height - 5.0);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);

    var sixthControlPoint = Offset(205.0, size.height - 40.0);
    var sixthEndPoint = Offset(220.0, size.height - 5.0);
    path.quadraticBezierTo(sixthControlPoint.dx, sixthControlPoint.dy,
        sixthEndPoint.dx, sixthEndPoint.dy);

    var sevenControlPoint = Offset(240.0, size.height - 40.0);
    var sevenEndPoint = Offset(255.0, size.height - 5.0);
    path.quadraticBezierTo(sevenControlPoint.dx, sevenControlPoint.dy,
        sevenEndPoint.dx, sevenEndPoint.dy);

    var eightControlPoint = Offset(275.0, size.height - 40.0);
    var eightEndPoint = Offset(290.0, size.height - 5.0);
    path.quadraticBezierTo(eightControlPoint.dx, eightControlPoint.dy,
        eightEndPoint.dx, eightEndPoint.dy);

    var ninthControlPoint = Offset(310.0, size.height - 40.0);
    var ninthEndPoint = Offset(330.0, size.height - 5.0);
    path.quadraticBezierTo(ninthControlPoint.dx, ninthControlPoint.dy,
        ninthEndPoint.dx, ninthEndPoint.dy);

    path.lineTo(size.width, size.height - 10.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BlackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 2, size.height - 50.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class OrangeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width - 250.0, size.height - 50.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
