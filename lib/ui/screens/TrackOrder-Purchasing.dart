import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrackOrderPurchasing extends StatefulWidget {
  _TrackOrderPurchasingState createState() => _TrackOrderPurchasingState();
}

class _TrackOrderPurchasingState extends State<TrackOrderPurchasing> {
  StateModel appState;


  static final sugarFreeTag = Container(
      height: 23,
      width: 120.0,
      child: RaisedButton(
        disabledColor: Color(0xFF3598dc),
        color: Color(0xFF3598dc),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(children: <Widget>[
          Icon(
            FontAwesomeIcons.hashtag,
            color: Colors.white,
            size: 11,
          ),
          new Padding(padding: EdgeInsets.only(left: 1.0)),
          Text("Sugar Free",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Poppins',
              )),
        ]),
      ));

  static final measurementTag = Container(
      height: 23,
      width: 105.0,
      child: RaisedButton(
        disabledColor: Color(0xFFed8175),
        color: Color(0xFFed8175),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("1.25 LTR",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  static final quantityTag = Container(
      height: 23,
      width: 110.0,
      child: RaisedButton(
        disabledColor: Color(0xFFed8175),
        color: Color(0xFFed8175),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("2 Bottles",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  static final migrosTag = Container(
      height: 23,
      width: 100.0,
      child: RaisedButton(
        disabledColor: Color(0xFF30ba7c),
        color: Color(0xFF30ba7c),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("Migros",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  static final typeTag = Container(
      height: 23,
      width: 100.0,
      child: RaisedButton(
        disabledColor: Color(0xFFf5b516),
        color: Color(0xFFf5b516),
        elevation: 1.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("Chilled",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  static final suggestedTagsLabel = Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Suggested Tags',
        style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final _checkOutProduct = Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Color(0xffeaedf5),
                  width: 2.0,
                ),)
          ),

          padding: EdgeInsets.only(left: 5.0, right: 5.00),
          child: Column(children: <Widget>[
            new Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 5.00, left: 10.0, right: 10.00),
                child: Column(children: <Widget>[
                  new Row(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            new Container(
                                width: 60,
                                padding: EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 40.00,
                                    left: 10.0,
                                    right: 8.00),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffe4e9f2))),
                                child: Image(
                                  image: new NetworkImage(
                                      'https://domreii.com/pub/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/c/o/cokezero.jpg'),
                                )),
                            Container(
                              padding: EdgeInsets.only(top:20,left:20),
                              height: 45,
                              child:   Image(
                                image: new AssetImage( "assets/images/track-order/purchasing-completed-1.png" ) ,
                              ),

                            ),
                          ],
                        )

                      ],
                    ),
                    Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 220,
                            child: new Text(
                              "Coca Cola Zero",
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xff8c8c8c),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          sugarFreeTag,
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          migrosTag
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          quantityTag,
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          typeTag
                        ],
                      ),
                      SizedBox(height: 10.0),
                    ]),
                  ]),
                ])),

          ]),
        ),


      ],
    );
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
                                              "assets/images/track-order/circle-selected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/going-to-store-1.png"),
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
                                              "assets/images/track-order/circle-selected.png"),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left:15,top:12),
                                        height: 55,
                                        child: Image(
                                          image: new AssetImage(
                                              "assets/images/track-order/purchasing-groceries-1.png"),
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
                                      child: Text('Purchasing Groceries',
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
                                SizedBox(width:100),
                                Column(

                                  children: <Widget>[
                                    new Container(

                                      padding: EdgeInsets.only(

                                        top: 10.0,
                                      ),
                                      child:  Text('2/2',
                                            style: TextStyle(
                                                color:  Color(0xFF0d1b41),
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),


                                    ),

                                  ],
                                ),



                              ],),

                            ),

                            _checkOutProduct,
                            _checkOutProduct,
                          ]

                          )
                      )
                  )


                ],
              )))
    ]);
  }
}
