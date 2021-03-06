import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CheckOutConfirmation extends StatefulWidget {
  _CheckOutConfirmationState createState() => _CheckOutConfirmationState();
}

class _CheckOutConfirmationState extends State<CheckOutConfirmation> {
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
  final _checkOutProduct = Stack(
    children: <Widget>[
      Container(
          padding: EdgeInsets.only(left: 5.0, right: 5.00),
          child: Card(
            elevation: 4,
            child: Column(children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 5.00, left: 10.0, right: 10.00),
                  child: Column(children: <Widget>[
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
    ],
  );

  @override
  Widget build(BuildContext context) {
    appState = StateWidget
        .of ( context )
        .state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen ( );
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
              title: Text(
                "Confirmation",
                style: new TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'),
              ),
              backgroundColor: Colors.transparent,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),

          ),
          body: SingleChildScrollView(

              child:
              new Container(
                padding: EdgeInsets.only(left:25,right:25),
                color: Colors.transparent,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left:10,right:5,top:10),
                          child:
                          Row(

                            children: <Widget>[
                              Container(

                                width: 100,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color(0xffabbae5),

                                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:10,right:5,top:10),
                          child:
                          Row(

                            children: <Widget>[
                              Container(

                                width: 100,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color(0xffabbae5),
                                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:10,right:5,top:10),
                          child:
                          Row(

                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color(0xff00259c),
                                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 40),
                    _checkOutProduct,
                    _checkOutProduct,
                    SizedBox(height: 40),
                    Container(
                        padding: EdgeInsets.only(left:15,right:15),
                        child:RaisedButton(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {Navigator.pushNamed(context, '/ThanksScreen');},
                          padding: EdgeInsets.all(12),
                          color: Color(0xFF00269d),
                          child: Text('Confirm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        )
                    )





                  ],
                ),




              )
          )
      )]);


  }

}