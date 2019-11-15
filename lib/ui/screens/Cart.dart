import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatelessWidget {
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
                    Container(
                      padding: EdgeInsets.only(left: 60),
                      child: new Row(
                        children: <Widget>[
                          FlatButton.icon(
                              onPressed: null,
                              icon: Icon(FontAwesomeIcons.edit,
                                  size: 12, color: Color(0xff0e1b42)),
                              label: Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff0e1b42),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              )),
                          FlatButton.icon(
                              onPressed: null,
                              icon: Icon(FontAwesomeIcons.trash,
                                  size: 12, color: Color(0xff0e1b42)),
                              label: Text(
                                "Delete",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff0e1b42),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    )
                  ])),
            ]),
          )),
    ],
  );

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
          title: Text(
            "Cart",
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
            child: new Stack(children: <Widget>[
          Column(
            children: <Widget>[
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
                _checkOutProduct,
                _checkOutProduct,
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 350,
                        child: RaisedButton(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {Navigator.pushNamed(context, '/CheckoutShipping');},
                          padding: EdgeInsets.all(12),
                          color: Color(0xff00269d),
                          child: Text('CheckOut',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )),
                ),Container(
                  height:25,
                            width: 220,
                            child: FlatButton(
                              child: new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(left: 30)),
                                  new Text(
                                    ' Add Another',
                                    style: TextStyle(
                                        color: Color(0xff00269d),
                                        fontSize: 18,
                                        height: 1.2,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              onPressed: () {



                              },
                            ))
              ]),
            ],
          )
        ])),
      )
    ]);
  }
}
