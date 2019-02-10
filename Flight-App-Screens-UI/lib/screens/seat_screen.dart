import 'package:flight_app_screens/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class SeatScreen extends StatefulWidget {
  _SeatScreenState createState() => _SeatScreenState();
}

class _SeatScreenState extends State<SeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: Text('Select Seat', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Business Class',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          seatWidget(),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Text(
              'Economy Class',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: seatWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 180.0,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Selected Seat', style: TextStyle(color: Colors.grey),),
                    subtitle: Text(
                      '15A, 16F, 16E', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                      ),
                    ),
                    leading: Icon(Icons.airline_seat_legroom_extra, color: Colors.grey,),
                    trailing: Container(
                      width: 130.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(width: 1.0, color: Colors.green),
                      ),
                      child: Center(
                        child: Text(
                          'Business Class', style: TextStyle(
                            color: Colors.green
                          ),
                        ),
                      ),
                    ),
                  ),
                   Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
            child: Container(
              width: 350.0,
              child: RaisedButton(
                padding: const EdgeInsets.all(18.0),
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: ((context) {
                      return TicketScreen();
                    })
                  ));
                },
                color: Colors.pink,
                child: Text(
                  'Purchase', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),),
              ),
            ),
          )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget seatWidget() {
    return  Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
                Icon(Icons.airline_seat_recline_normal, color: Colors.white,),
              ],
            ),
          );
  }

}
