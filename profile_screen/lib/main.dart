import 'package:flutter/material.dart';
import 'package:profile_screen/account.dart';
import 'package:profile_screen/favourite.dart';
import 'package:profile_screen/home.dart';
import 'package:profile_screen/search.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  PageController pageController;

  void navigationTabbed(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
   
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {
                navigationTabbed(0);
              },
              child: Tab(
                icon: Icon(Icons.home,
                    size: 30.0,
                    color: selectedIndex == 0 ? Colors.black : Colors.grey),
                text: '',
              ),
            ),
            InkWell(
              onTap: () {
                navigationTabbed(1);
              },
              child: Tab(
                icon: Icon(Icons.search,
                    size: 30.0,
                    color: selectedIndex == 1 ? Colors.black : Colors.grey),
                text: '',
              ),
            ),
            InkWell(
              onTap: () {
                navigationTabbed(2);
              },
              child: Tab(
                icon: Icon(Icons.favorite_border,
                    size: 30.0,
                    color: selectedIndex == 2 ? Colors.black : Colors.grey),
                text: '',
              ),
            ),
            InkWell(
              onTap: () {
                navigationTabbed(3);
              },
              child: Tab(
                icon: Icon(Icons.account_box,
                    size: 30.0,
                    color: selectedIndex == 3 ? Colors.black : Colors.grey),
                text: '',
              ),
            ),
          ],
        ),
      ),

      
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            )
          ],
          title: Text(
            'kylie jenner',
            style: TextStyle(color: Colors.black),
          )),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[const HomePage(),
         const SearchPage() ,
          const FavouritePage() ,
          const AccountPage()
          ],
      ),
     
    );
  }
}






