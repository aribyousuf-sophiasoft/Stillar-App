import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrackOrderOrderAssigned extends StatefulWidget {
  _TrackOrderOrderAssignedState createState() => _TrackOrderOrderAssignedState();
}

class _TrackOrderOrderAssignedState extends State<TrackOrderOrderAssigned> {
  StateModel appState;



  @override
  Widget build(BuildContext context) {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }

    return new Stack(children: <Widget>[
      new Container(
        height: double.infinity,
        width: double.infinity,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/login/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Track Order",
                style: new TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'),
              ),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ]),
          body: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/TrackOrder-OrderPlaced');
                          },
                          child:
                          Column(
                            children: <Widget>[
                              Container(

                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/circle-selected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/order-placed-1.png"),
                                        ),

                                      ),

                                    ],
                                  )
                              )

                            ],
                          ),
                        ),

                        Column(
                          children: <Widget>[
                            Container(

                              width: 30,
                              child: Image(
                                image: new AssetImage(
                                    "assets/images/track-order/line-selected.png"),
                              ),

                            )
                          ],

                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/TrackOrder-OrderAssigned');
                          },
                          child:
                          Column(
                            children: <Widget>[
                              Container(

                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/circle-selected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/order-assigned-1.png"),
                                        ),

                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:29,top:63),
                                        height: 75,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/selected-arrow.png"),
                                        ),

                                      )

                                    ],
                                  )
                              )

                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(

                              width: 30,
                              child: Image(
                                image: new AssetImage(
                                    "assets/images/track-order/line-unselected.png"),
                              ),

                            )
                          ],

                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/TrackOrder-GoingStore');
                          },
                          child:
                          Column(
                            children: <Widget>[
                              Container(

                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/circle-unselected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/going-to-store-2.png"),
                                        ),

                                      ),

                                    ],
                                  )
                              )

                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(

                              width: 30,
                              child: Image(
                                image: new AssetImage(
                                    "assets/images/track-order/line-unselected.png"),
                              ),

                            )
                          ],

                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/TrackOrder-Purchasing');
                          },
                          child:
                          Column(
                            children: <Widget>[
                              Container(

                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/circle-unselected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/purchasing-groceries-2.png"),
                                        ),

                                      ),

                                    ],
                                  )
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                      width:380,
                      padding:EdgeInsets.only(bottom:30,top:10),
                      child:
                      Card(
                          elevation: 3,
                          child:


                          Column(children: <Widget>[
                            Container(
                              padding:EdgeInsets.only(bottom:10),

                              decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                   <--- left side
                                      color: Color(0xffeaedf5),
                                      width: 2.0,
                                    ),)
                              ),

                              child:
                              Row(children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Container(

                                      width: 200,
                                      padding: EdgeInsets.only(
                                          top:10,
                                          left: 20.0,
                                          right: 20.00),
                                      child: Text('Order Assigned',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    new Container(
                                      width: 200,
                                      padding: EdgeInsets.only(

                                          left: 20.0,
                                          right: 10.00),
                                      child: Text('Placed on Jun 12, 2019  16:00',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFb1b1b1),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                    ),



                                  ],
                                ),





                              ],),

                            ),
                            Container(
                                width:380,

                              padding: EdgeInsets.only(top:20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child:CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1520560868530-7877729f8942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')),
                                  ),
                                  new Container(


                                    padding: EdgeInsets.only(
                                        top:10,

                                        ),
                                    child: Text('John Doe',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF0d1b41),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold)),
                                  ),
                    Container(
                      child: RatingBar(
                        itemSize: 15,
                        initialRating: 4.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color(0xff00269d),
                        ),

                      )
                    ),
                                  new Container(


                                    padding: EdgeInsets.only(
                                      top:10,

                                    ),
                                    child: Text('Black Civic Prosmetic Oriel ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFb1b1b1),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  new Container(


                                    padding: EdgeInsets.only(
                                      top:10,
                                      bottom:20,

                                    ),
                                    child: Text('AGU 555',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0d1b41),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold)),
                                  ),

                                ],
                              )

                            )

                          ]

                          )
                      )
                  )


                ],
              )))
    ]);
  }
}
