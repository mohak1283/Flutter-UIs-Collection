import 'package:flutter/material.dart';
import 'package:ui_shopping_cart/screens/find_product_screen.dart';
import 'package:ui_shopping_cart/screens/home_screen.dart';
import 'package:ui_shopping_cart/screens/shopping_cart_screen.dart';
import 'package:ui_shopping_cart/screens/stats_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Furniture UI",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
    void initState() {
      super.initState();
      controller = new TabController(vsync: this, length: 4);
    }

    @override
      void dispose() {
        super.dispose();
        controller.dispose();
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
         color: Colors.white,
         child: TabBar(
           controller: controller,
           indicatorColor: Colors.yellow,
           indicatorSize: TabBarIndicatorSize.tab,
           indicatorWeight: 5.0,
           tabs: <Widget>[
             Tab(icon: Icon(Icons.event_seat, color: Colors.grey,),),
             Tab(icon: Icon(Icons.timer, color: Colors.grey,),),
             Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey,),),
             Tab(icon: Icon(Icons.person_outline, color: Colors.grey,),)
           ],
         ),
       ), 
       body: TabBarView(
         controller: controller,
         children: <Widget>[
           HomeScreen(),
           FindProductScreen(),
           ShoppingCartScreen(),
           StatsScreen()
         ],
       ),
    );
  }

  
}