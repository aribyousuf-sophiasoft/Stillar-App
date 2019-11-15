import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScheduledOrders extends StatelessWidget {

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
  final _OrderDetails = Stack(
    children: <Widget>[
      Container(

          padding: EdgeInsets.only(left: 5.0, right: 5.00),
          child: Card(
            elevation: 4,
            child: Column(children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.00, left: 10.0, right: 10.00),
                  child: Column(children: <Widget>[
                    new Row(children: <Widget>[
                      Column(
                        children: <Widget>[
                          new Container(
                            width: 250,
                            padding: EdgeInsets.only(


                                left: 10.0,
                                right: 10.00),
                            child: Text('Every Month',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0d1b41),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          new Container(
                            width: 250,
                            padding: EdgeInsets.only(

                                left: 10.0,
                                right: 10.00),
                            child: Text('Every 28th of month',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFb1b1b1),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Column(

                        children: <Widget>[
                          new Container(
                            width: 100,
                            padding: EdgeInsets.only(


                              bottom: 20.0,
                            ),
                            child: Text('Scheduled',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFfbb450),
                                  fontFamily: 'Poppins',
                                  fontStyle: FontStyle.italic,

                                )),
                          ),

                        ],
                      ),



                    ],),
                    SizedBox(height: 10),
                    new Row(children: <Widget>[
                      Column(
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
                              ))
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
          )),

      new Positioned ( // headline
          child: new Container(

            height: 150,




            decoration: new BoxDecoration (
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.3,
                    1


                  ],
                  colors: [Colors.white.withOpacity(0.7), Colors.white.withOpacity(0.1)]),
            ),

          ),
          top:2.0,
          bottom:2.0,
          left: 10.0,
          right:10.0

      ),

      Container(
          width: 400,

          padding: EdgeInsets.only(left:20.00,top:110),
          child:
          Column (
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {

                },
                padding: EdgeInsets.only(top:8,bottom:8,left:5,right:5),
                color: Color(0xFF00269d),
                child: Text('View Details',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold)),
              ),

            ],
          )

      )

    ],
  );



  @override
  Widget build(BuildContext context) {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }
    return new     Scaffold(
        body: SingleChildScrollView(
            child: new Stack(children: <Widget>[
            new Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/login/background.png"),
          fit: BoxFit.fill,
        ),
    ),
            ),
              Column(children: <Widget>[
                SizedBox(height: 20),
                _OrderDetails,
                _OrderDetails,
              ])

            ]
            )
        )
    );

  }
}
