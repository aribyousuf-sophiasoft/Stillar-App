import 'dart:convert';

import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  @override
  StateModel appState;

  Widget build(BuildContext context) {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }

    final AddressHome = Container(
        padding: EdgeInsets.only(
            left: 5.0, right: 5.00),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe4e9f2)),
        ),
        child: Card(
      elevation: 3,
      color: Colors.white,

      child: Column(children: <Widget>[

        new Container(
            padding: EdgeInsets.only(
                top: 20.0, bottom: 10.00,left: 10.0, right: 10.00),


            child: Column(children: <Widget>[
              new Row(children: <Widget>[


                Column(
                  children: <Widget>[
                    new Container(
                      width:60,
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
            decoration: BoxDecoration(
            border: Border.all(color: Color(0xffe4e9f2))
            ),
                        child:
                        Image(
                          image: AssetImage("assets/images/profile/home.png"),
                        )
                    )

                  ],
                ),
                Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Container(

                        padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.00,
                            left: 10.00,
                            right: 20.00),
                        width: 240,
                        child: new Text(
                          "Home",
                          style: new TextStyle(
                              fontSize: 20.0,
                              color: Color(0xff8c8c8c),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 15.0),
                      Container(
                        width: 240,
                        child: new Text(
                          "Lorem Ipsum is simply dummy text of the printing ",
                          overflow: TextOverflow.clip,
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff8c8c8c),
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ]),
              ]),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                    width: 185,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe4e9f2)),
                    ),
                    child: Text(
                      "Edit",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff4cb59d),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width:185,
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe4e9f2)),
                    ),
                    child: Text(
                      "Remove",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Color(0xffee4e40),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ]))
      ]),
    ));

    final AddressOffice = Container(
        padding: EdgeInsets.only(
            left: 5.0, right: 5.00),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe4e9f2)),
        ),
        child: Card(
          elevation: 3,
          color: Colors.white,

          child: Column(children: <Widget>[

            new Container(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 10.00,left: 10.0, right: 10.00),


                child: Column(children: <Widget>[
                  new Row(children: <Widget>[


                    Column(
                      children: <Widget>[
                        new Container(
                            width:60,
                            padding: EdgeInsets.only(
                                top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffe4e9f2))
                            ),
                            child:
                            Image(
                              image: AssetImage("assets/images/profile/office.png"),
                            )
                        )

                      ],
                    ),
                    Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(

                            padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.00,
                                left: 10.00,
                                right: 20.00),
                            width: 240,
                            child: new Text(
                              "Office",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff8c8c8c),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            width: 240,
                            child: new Text(
                              "Lorem Ipsum is simply dummy text of the printing ",
                              overflow: TextOverflow.clip,
                              style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff8c8c8c),
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ]),
                  ]),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                        width: 185,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe4e9f2)),
                        ),
                        child: Text(
                          "Edit",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff4cb59d),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width:185,
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe4e9f2)),
                        ),
                        child: Text(
                          "Remove",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Color(0xffee4e40),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ]))
          ]),
        ));

    final AddressWareHouse = Container(
        padding: EdgeInsets.only(
            left: 5.0, right: 5.00),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe4e9f2)),
        ),
        child: Card(
          elevation: 3,
          color: Colors.white,

          child: Column(children: <Widget>[

            new Container(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 10.00,left: 10.0, right: 10.00),


                child: Column(children: <Widget>[
                  new Row(children: <Widget>[


                    Column(
                      children: <Widget>[
                        new Container(
                            width:60,
                            padding: EdgeInsets.only(
                                top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffe4e9f2))
                            ),
                            child:
                            Image(
                              image: AssetImage("assets/images/profile/warehouse.png"),
                            )
                        )

                      ],
                    ),
                    Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(

                            padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.00,
                                left: 10.00,
                                right: 20.00),
                            width: 240,
                            child: new Text(
                              "Warehouse",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff8c8c8c),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            width: 240,
                            child: new Text(
                              "Lorem Ipsum is simply dummy text of the printing ",
                              overflow: TextOverflow.clip,
                              style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff8c8c8c),
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ]),
                  ]),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                        width: 185,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe4e9f2)),
                        ),
                        child: Text(
                          "Edit",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff4cb59d),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width:185,
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.00,left: 5.0, right: 5.00),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe4e9f2)),
                        ),
                        child: Text(
                          "Remove",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Color(0xffee4e40),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ]))
          ]),
        ));


    return Scaffold(
        body: SingleChildScrollView(
            child: new Stack(children: <Widget>[
      Column(children: <Widget>[
        new Container(
          height:150,
            child: new Column(children: <Widget>[
          new Padding(padding: EdgeInsets.only(left: 10.00, top: 20.00)),
      new Row(
              children: <Widget>[
                SizedBox(width: 15, height: 20),
                Column(children: <Widget>[
                  CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg')),
                ]),
                Column(
                  children: <Widget>[
                    Container(
                      width:190,
                      height:50,
                      child:Row(children: <Widget>[
                        Container(
                          width:170,
                          padding: EdgeInsets.only(left: 10.0, bottom: 1),
                          child: new Text(
                            "Jane Doe",
                            style: new TextStyle(
                                fontSize: 32.0,
                                color: Color(0xff0c1c41),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width:20,
                          child: new IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.edit,
                                color: Color(0xff2644ab),
                                size: 16,
                              ),
                              onPressed: () {

                                Navigator.pushNamed(context, '/EditProfile');
                              }),
                        )
                      ]),
                    ),
                    Container(
                        width:190,
                      height:30,
                      padding: EdgeInsets.only(left: 10.0,top:2.0),
                      child:
                      Row(children: <Widget>[
                        Container(
                          width:40,
                          padding: EdgeInsets.only(left: 10.0),
                          child: new IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.phone,
                                color: Color(0xff2644ab),
                                size: 16,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 2.0),
                          child: new Text(
                            "030022929292",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: Color(0xff8f8f8f),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width:190,
                      height:30,
                      padding: EdgeInsets.only(left: 10.0,top:2.0),
                      child:
                      Row(children: <Widget>[
                        Container(
                          width:40,
                          padding: EdgeInsets.only(left: 10.0),
                          child: new IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.envelope,
                                color: Color(0xff2644ab),
                                size: 16,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 2.0),
                          child: new Text(
                            "abc@gmail.com",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: Color(0xff8f8f8f),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ]),
                    ),

                  ],
                )
              ],
            ),
      ]
          ),
    )

                ,
        new Container(
            child: new Column(children: <Widget>[
          new Padding(padding: EdgeInsets.only(left: 10.00, top: 10.00)),
          new Container(
            color: Color(0xffeeeeee),
            child: new Row(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(left: 20.00, top: 30.00)),
                new Text(
                  "Shipping Address",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff0d1b43),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.left,
                ),
                new Padding(padding: EdgeInsets.only(left: 200.00, top: 30.00)),
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.plus,
                      color: Color(0xff0e1b41),
                      size: 16,
                    ),
                    onPressed: () {

                      Navigator.pushNamed(context, '/ShippingAddress');
                    }),
              ],
            ),
          ),

          AddressHome,
          AddressOffice,
          AddressWareHouse
        ]))
      ])
    ])));
  }
}
