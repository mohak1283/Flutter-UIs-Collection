import 'package:flutter/material.dart';

class PetDetailPage extends StatelessWidget {
   final String image;
   final List<String> title = ['Age' , 'Sex' , 'Color' , 'ID'];
  final List<String> data = ['1' , 'Female' , 'White' , '123'];
  final String desc =
      'I recently lost my job and don\'t have enough time or money to tend to Bo anymore. I have a lot of health issues that need attention...';

   PetDetailPage(this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  expandedHeight: 230.0,
                  floating: false,
                  pinned: true,
                  elevation: 0.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
            ];
          },
          body: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Puppy Katherin',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 30.0, bottom: 30.0),
                    child: Text(
                      'French Black puppy',
                      style: TextStyle(color: Colors.grey[400], fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 3.0, left: 25.0, right: 0.0),
                    child: SizedBox(
                      height: 100.0,
                      width: 400.0,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: title.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 14.0),
                                  child: Material(
                                    child: GestureDetector(
                                      child: Container(
                                        height: 200.0,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Colors.grey[200],
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(title[index],
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 16.0)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: Text(
                                                  data[index],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16.0),
                                                ),
                                              )
                                            ],
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
                    padding: const EdgeInsets.only(top: 38.0, left: 20.0),
                    child: Container(
                      width: 375.0,
                      height: 85.0,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                        title: Text(
                          'Roselia Drew',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        trailing: Text('1.68 km',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('Owner',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 35.0, top: 20.0),
                    child: Text(
                      desc,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:50.0 , left: 30.0 , right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                              child: Icon(
                            Icons.present_to_all,
                            color: Colors.black,
                            size: 25,
                          )),
                        ),

                        Container(
                          height: 65.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            border: Border.all(color: Colors.red[100] , width: 5),
                            color: Colors.red[400]
                          ),
                          child: Center(
                            child: Row(
                             
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:25.0),
                                  child: Icon(Icons.pets , color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:25.0),
                                  child: Text('ADOPTION' , style: TextStyle(color: Colors.white , fontSize: 18.0 ),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
