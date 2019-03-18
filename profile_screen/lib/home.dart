import 'package:flutter/material.dart';
import 'package:profile_screen/buttonsection.dart';
import 'package:profile_screen/grid_section.dart';
import 'package:profile_screen/horizontal_list_section.dart';
import 'package:profile_screen/statswidget.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    
   return ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 35.0),
            child: Row(
              children: <Widget>[
                Material(
                  shadowColor: Colors.grey[300],
                  elevation: 40.0,
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/upated_pic.jpg"))),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('kylie jenner',
                        style: TextStyle(color: Colors.black, fontSize: 25.0)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('Fashion',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 15.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('Models',
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 15.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('www.thekyliejenner.com',
                          style: TextStyle(color: Colors.blue, fontSize: 12.0)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const StatsWidget(
                    number: '490',
                    title: 'Posts',
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        const StatsWidget(number: '120k', title: 'Followers')),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const StatsWidget(number: '80k', title: 'Following'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 40.0, right: 40.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 25.0, left: 35.0, right: 35.0, bottom: 10.0),
            child: const ButtonSection(),
          ),
          SizedBox(
            height: 85.0,
            width: 120.0,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              // child: horizontalListSection(),
              child:  HorizontalListSection(),
            ),
          ),

          Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              // child: horizontalListSection(),
              child:  GridSection(),
            ),
        ],
      );
  }
}