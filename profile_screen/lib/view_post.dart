import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewPostPage extends StatelessWidget {
  String post;

  ViewPostPage(this.post);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: true,
          body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Colors.purple
                ]
              )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.indigo[400], Colors.purple[200]])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 60.0,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                                      child: Icon(
                      Icons.arrow_back,
                      
                      color: Colors.white,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 60.0,
                ),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                          image: AssetImage("assets/profile_kylie.jpg"))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                  top: 60.0,
                ),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            right: 20.0,
            left: 20.0,
            top: 120.0,
            child: Container(
              height: 300.0,
              width: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(post),
                  )),
            ),
          ),
          Positioned(
            top: 470.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[
                Icon(
                  Icons.favorite_border,
                  color: Colors.black38,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '2,203',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Icon(
                    Icons.message,
                    color: Colors.black38,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('15',
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                ),
                SizedBox(
                  width: 160.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.black38,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 550.0,
            left: 10.0,
            right: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.white , width: 2),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/second_comment_profile_pic.jpg')
                      )
                    ),
                    ),

                  title: Text('Janet Martin' ,style:TextStyle(fontSize:15.0 , color: Colors.white54)),
                  subtitle: Text('Our blue top is available!' ,style:TextStyle(fontSize:15.0 , color: Colors.white)),
                  trailing: Icon(Icons.favorite_border , color: Colors.white54,), 
                ),

                ListTile(
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.white , width: 2),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/first_comment_profile_pic.jpg')
                      )
                    ),
                    ),

                  title: Text('Zarela Reed' ,style:TextStyle(fontSize:15.0 , color: Colors.white54)),
                  subtitle: Text('Great!' ,style:TextStyle(fontSize:15.0 , color: Colors.white)),
                  trailing: Icon(Icons.favorite_border , color: Colors.white54,), 
                ),

                Padding(
                  padding: const EdgeInsets.only(top:28.0 , left: 10.0 , right: 10.0),
                  child: Container(
                    height: 60.0,
                    width: 350.0,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:8.0,left:8.0,right: 10.0),
                                      child: TextField(
                      decoration: InputDecoration(
                      
                        hintText: 'Add a comment...',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left:8.0 , bottom: 8.0 , right: 8.0),
                          child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(100.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage("assets/second_comment_profile_pic.jpg"))),
                  ),
                        ),
                      ),
                    ),
                                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
