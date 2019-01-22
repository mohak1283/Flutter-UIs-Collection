import 'package:flutter/material.dart';

import 'package:ui_shopping_cart/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Colors.yellow[700],
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.yellow[400].withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.yellow[400].withOpacity(0.5),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/chris.jpg'))),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              color: Colors.white,
                              onPressed: () => {},
                              iconSize: 30.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text('Hello , Pino',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                fontSize: 30.0)),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text('What do you want to buy?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                fontSize: 23.0)),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.yellow[700], size: 30.0),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Quicksand')),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 75.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/sofas.png'))),
                            ),
                            Text('Sofas',
                                style: TextStyle(fontFamily: 'Quicksand'))
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/wardrobe.png'))),
                            ),
                            Text('Wardrobe',
                                style: TextStyle(fontFamily: 'Quicksand'))
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/desk.png'))),
                            ),
                            Text('Desk',
                                style: TextStyle(fontFamily: 'Quicksand'))
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/dresser.png'))),
                            ),
                            Text('Dresser',
                                style: TextStyle(fontFamily: 'Quicksand'))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              itemCard('FinnNavian', 'assets/ottoman.jpg', true),
              itemCard('FinnNavian', 'assets/anotherchair.jpg', false),
              itemCard('FinnNavian', 'assets/chair.jpg', false)
            ],
          )
        ],
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavourite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProductDetailScreen();
          }));
        },
        child: Container(
          color: Colors.white,
          height: 155.0,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 4.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 45.0,
                      ),
                      Material(
                        elevation: isFavourite ? 2.0 : 0.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: isFavourite
                                    ? Colors.white
                                    : Colors.grey.withOpacity(0.2)),
                            child: Center(
                              child: isFavourite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : Icon(Icons.favorite_border),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 175.0,
                    child: Text(
                      'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 35.0,
                      ),
                      Container(
                          height: 40.0,
                          width: 50.0,
                          color: Colors.orange,
                          child: Center(
                            child: Text("\$248",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold)),
                          )),
                      Container(
                          height: 40.0,
                          width: 100.0,
                          color: Colors.yellow[700],
                          child: Center(
                            child: Text("Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand')),
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
