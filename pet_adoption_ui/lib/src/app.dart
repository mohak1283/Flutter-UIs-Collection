import 'package:flutter/material.dart';
import 'package:pet_adoption_ui/src/pet_detail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Pets adoption ui',
      
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ['Cats', 'Dogs', 'Birds', 'Others'];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 40.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 25.0,
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 48.0, left: 100.0, right: 100.0),
            child: Text(
              'Location',
              style: TextStyle(color: Colors.grey[400], fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.add_location,
                  color: Colors.black,
                  size: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Luisville,',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'KY',
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 40.0, right: 40.0),
            child: Divider(
              height: 2.0,
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 40.0, right: 20.0),
            child: SizedBox(
              height: 70.0,
              width: 300.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.storage,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(left: 22.0, right: 14.0),
                          child: Material(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                  print('Selected index :$_selectedIndex');
                                });
                              },
                              child: Container(
                                height: index == _selectedIndex ? 140.0 : 150.0,
                                width: index == _selectedIndex ? 75.0 : 65.0,
                                decoration: BoxDecoration(
                                  border: index == _selectedIndex
                                      ? Border.all(
                                          color: Colors.red[100], width: 5)
                                      : null,
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: index == _selectedIndex
                                      ? Colors.red
                                      : Colors.grey[300],
                                ),
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: TextStyle(
                                        color: index == _selectedIndex
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 35.0),
            child: SubSectionPage(_selectedIndex),
          ),
        ],
      ),

      // body:
    );
  }
}

Widget SubSectionPage(int _currentIndex) {
  List<String> listImages = [
    'assets/image_three.jpg',
    'assets/image_one.jpg',
    'assets/image_two.jpg',
    'assets/image_one.jpg',
    'assets/image_one.jpg'
  ];

  if (_currentIndex == 0) {
    return Container(
        height: 20.0,
        width: 20.0,
        child: Center(
            child: Text(
          'Cats page',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        )));
  } else if (_currentIndex == 1) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: listImages.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                             PetDetailPage(listImages[index])));
              },
              child: Container(
                  width: 500.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(listImages[index]))),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Puppy Katherin',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, right: 20.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 25.0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 5.0, bottom: 50.0),
              child: Text(
                'French Black puppy',
                style: TextStyle(color: Colors.grey[400], fontSize: 15.0),
              ),
            )
          ],
        );
      },
    );
  } else if (_currentIndex == 2) {
    return Container(
      height: 20.0,
      width: 20.0,
      child: Center(
          child: Text(
        'Birds page',
        style: TextStyle(color: Colors.black, fontSize: 20.0),
      )),
    );
  } else {
    return Container(
        height: 20.0,
        width: 20.0,
        child: Center(
            child: Text(
          'Others page',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        )));
  }
}
