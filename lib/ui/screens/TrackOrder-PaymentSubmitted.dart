import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrackOrderPaymentSubmitted extends StatefulWidget {
  _TrackOrderPaymentSubmittedState createState() => _TrackOrderPaymentSubmittedState();
}

class _TrackOrderPaymentSubmittedState extends State<TrackOrderPaymentSubmitted> {
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
                onPressed: () =>  Navigator.pushNamed(context, '/ActiveOrderDetails'),
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
                            Navigator.pushNamed(context, '/TrackOrder-PurchasingCompleted');
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
                                              "assets/images/track-order/purchasing-completed-1.png"),
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
                            Navigator.pushNamed(context, '/TrackOrder-onTheWay');
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
                                              "assets/images/track-order/on-the-way-1.png"),
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
                            Navigator.pushNamed(context, '/TrackOrder-RiderArrived');
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
                                              "assets/images/track-order/rider-arrived-2.png"),
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
                            Navigator.pushNamed(context, '/TrackOrder-PaymentSubmitted');
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
                                              "assets/images/track-order/payment-1.png"),
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
                                      child: Text('Payment Submitted',
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
                                      child: Text('on Jun 12, 2019  16:00',
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
                                      child: Text('Total Amount Due',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                    ),


                                  ],
                                ),

                                SizedBox(width:60),
                                Column(

                                  children: <Widget>[
                                    new Container(

                                      padding: EdgeInsets.only(

                                        top: 10.0,
                                      ),
                                      child:  Text('CHF 12.00',
                                          style: TextStyle(
                                              color:  Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),


                                    ),

                                  ],
                                ),



                              ],),

                            ),
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
                                      child: Text('Amount Paid',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                    ),


                                  ],
                                ),

                                SizedBox(width:60),
                                Column(

                                  children: <Widget>[
                                    new Container(

                                      padding: EdgeInsets.only(

                                        top: 10.0,
                                      ),
                                      child:  Text('CHF 14.00',
                                          style: TextStyle(
                                              color:  Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),


                                    ),

                                  ],
                                ),



                              ],),

                            ),
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
                                      child: Text('Cash Back',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                    ),


                                  ],
                                ),

                                SizedBox(width:60),
                                Column(

                                  children: <Widget>[
                                    new Container(

                                      padding: EdgeInsets.only(

                                        top: 10.0,
                                      ),
                                      child:  Text('CHF 2.00',
                                          style: TextStyle(
                                              color:  Color(0xFF0d1b41),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),


                                    ),

                                  ],
                                ),



                              ],),

                            ),
                            Container(
                              padding: EdgeInsets.only(left:50,bottom:20 ),

                              child: Row(children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left:10,right:10,top:10),
                                  child:  OutlineButton(

                                    borderSide: BorderSide(color: Color(0xFF00269d)),


                                    child: Text('Download Receipt',
                                        style: TextStyle(
                                            color: Color(0xFF00269d),
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},

                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(left:10,right:10,top:10),
                                    child:RaisedButton(
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      onPressed: () {Navigator.pushNamed(context, '/Rating');},
                                      padding: EdgeInsets.only(left:20,right:20,top:10,bottom:10),
                                      color: Color(0xFF00269d),
                                      child: Text('Rate Now',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    )
                                ),
                              ],),

                            ),

                          ]

                          )
                      )
                  ),




                ],
              )))
    ]);
  }
}
