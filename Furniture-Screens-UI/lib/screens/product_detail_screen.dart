import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/ottoman.jpg',
    'assets/otto2.jpeg',
    'assets/otto3.jpg',
    'assets/otto4.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(photos[photoIndex]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Material(
                          elevation: 4.0,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Icon(Icons.favorite, color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 240.0,
                    left: MediaQuery.of(context).size.width / 2 - 50.0,
                    child: SelectedPhoto(
                      numberOfDots: photos.length,
                      photoIndex: photoIndex,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Alcide Number: 2323X',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Finn Navian-Sofa',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2 + 70.0,
                      child: Text(
                          'Scandinavian small size sofa / imported full leather/Dail italia oil wax leather black',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('\$248',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 24.0)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('COLOUR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 20.0)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  colorItems(Colors.black),
                  colorItems(Colors.grey),
                  colorItems(Colors.grey[300]),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('MATERIAL',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 20.0)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  materialItems(Icons.work, 'x30%'),
                  materialItems(Icons.book, 'x60%'),
                  materialItems(Icons.timeline, 'x10%'),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 7.0,
        color: Colors.white,
        child: Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
            SizedBox(width: 10.0),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: Icon(
                Icons.account_box,
                color: Colors.grey,
              ),
            ),
            Container(
              color: Colors.yellow[700],
              width: MediaQuery.of(context).size.width - 150.0,
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 19.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget colorItems(Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }

  Widget materialItems(IconData icon, String percentage) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
            size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
          ),
          Text(
            percentage,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          )
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center, children: buildDots()),
    );
  }
}
