import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/flagfrance.png',
                    width: 28.0,
                    height: 25.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    'France',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30.0,
                        fontFamily: 'Cardo'),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    width: 18.0,
                    height: 18.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 14.0,
                    )),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width - 210.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/person.jpeg',
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('The Eiffel Tower',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('It is a long established fact that a reader',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('will be distracted by the readable content',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('of a page when looking ...',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 350.0,
                      height: 280.0,
                    ),
                    Container(
                      width: 300.0,
                      height: 280.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/tower.jpg'))),
                    ),
                    Positioned(
                      top: 120.0,
                      left: 230.0,
                      child: Material(
                        elevation: 8.0,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0)),
                        child: Container(
                          width: 100.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.favorite, color: Colors.red),
                              Text('Like',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 16.0),
                child: Row(
                  children: <Widget>[
                    Text('Hot Spots',
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cardo')),
                    SizedBox(width: MediaQuery.of(context).size.width - 270.0),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('1',
                                  style: TextStyle(
                                      color: Colors.grey[850],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Container(
                                width: 4.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.indigo[900]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('2',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('3',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('4',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                    ),
                  ],
                ),
              ),
              //  Padding(
              //    padding: const EdgeInsets.only(top: 18.0, left: 18.0),
              // child:
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18.0),
                child: SizedBox(
                  height: 250.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      cardItemWidget(context, 'assets/museedu.jpg',
                          'Musee du Louvre', '10 BOKING'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/arcdetrimp.jpg',
                          'Arc de Triomphe', '63 BOKING'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/museedu.jpg',
                          'Musee du Louvre', '10 BOKING'),
                      Padding(
                        padding: EdgeInsets.only(right: 12.0),
                      ),
                    ],
                  ),
                ),
              )
              //)
            ],
          )
        ],
      ),
    );
  }

  Widget cardItemWidget(
      BuildContext context, String image, String title, String bokingQty) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => DetailScreen(image, title)));
      }),
      child: Container(
        width: 250.0,
        height: 220.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 250.0,
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(image))),
                ),
                Positioned(
                  left: 200,
                  top: 8.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '1.6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            //fontFamily: 'Cardo',
                            fontSize: 24.0),
                      ),
                      Text('KM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18.0)),
                      SizedBox(
                        height: 25.0,
                      ),
                      Material(
                        color: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child:
                                Icon(Icons.favorite, color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            circleWidgets(bokingQty),
          ],
        ),
      ),
    );
  }

  Widget circleWidgets(String bokingQty) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.white),
                    image: DecorationImage(
                        image: AssetImage('assets/person.jpeg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                left: 20.0,
                top: 1.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 16.0,
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.white, width: 1.5),
                      image: DecorationImage(
                          image: AssetImage('assets/person.jpeg'),
                          fit: BoxFit.cover)),
                ),
              ),
              // Positioned(
              //   left: 30.0,
              //   top: 1.0,
              //   child: Stack(
              //     children: <Widget>[
              //       Container(
              //         width: 30.0,
              //         height: 30.0,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(40.0),
              //             color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          SizedBox(
            width: 90.0,
          ),
          Text(bokingQty, style: TextStyle(color: Colors.grey, fontSize: 18.0))
        ],
      ),
    );
  }
}
