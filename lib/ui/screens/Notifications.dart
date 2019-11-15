import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatefulWidget {
  Notificationsstate createState() => Notificationsstate();

}


class Notificationsstate extends State<Notifications> {

  @override
  void initState() {


    super.initState();

  }
  StateModel appState;

  bool Switched = true;



  Widget build(BuildContext context) {

    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }

    return  new Stack(children: <Widget>[
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
    "Notifications",
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
        body: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top:10),
                child:
                Column(

                  children: <Widget>[

                    GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, '/ChangePassword');
                      },
                      child:
                      Container(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.00,top:10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe4e9f2)),
                          ),
                          child: Card(
                            elevation: 3,
                            color: Colors.white,

                            child: Column(children: <Widget>[

                              new Container(
                                  padding: EdgeInsets.only(
                                      top: 5.0, bottom: 5.00,left: 10.0, right: 10.00),


                                  child: Column(children: <Widget>[
                                    new Row(children: <Widget>[


                                      Column(
                                        children: <Widget>[
                                          new Container(
                                              width:60,
                                              padding: EdgeInsets.only(
                                                  top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),

                                              child:
                                              Image(
                                                image: AssetImage("assets/images/notifications/arrived.png"),
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


                                                 
                                                  right: 20.00),
                                              width: 280,
                                              child: new Text(
                                                "Your Package Has Arrived",
                                                style: new TextStyle(
                                                    fontSize: 16.0,
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
                                            SizedBox(width: 10.0),
                                            Container(
                                              width: 280,
                                              child: new Text(
                                                "6:20 AM",
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

                                  ])),


                            ]),
                          ))
                    ),
                    GestureDetector(
                        onTap: (){
                          //Navigator.pushNamed(context, '/ChangePassword');
                        },
                        child:
                        Container(
                            padding: EdgeInsets.only(
                                left: 5.0, right: 5.00,top:10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe4e9f2)),
                            ),
                            child: Card(
                              elevation: 3,
                              color: Colors.white,

                              child: Column(children: <Widget>[

                                new Container(
                                    padding: EdgeInsets.only(
                                        top: 5.0, bottom: 5.00,left: 10.0, right: 10.00),


                                    child: Column(children: <Widget>[
                                      new Row(children: <Widget>[


                                        Column(
                                          children: <Widget>[
                                            new Container(
                                                width:60,
                                                padding: EdgeInsets.only(
                                                    top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),

                                                child:
                                                Image(
                                                  image: AssetImage("assets/images/notifications/on-the-way.png"),
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



                                                    right: 20.00),
                                                width: 280,
                                                child: new Text(
                                                  "Rider is on the way",
                                                  style: new TextStyle(
                                                      fontSize: 16.0,
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
                                              SizedBox(width: 10.0),
                                              Container(
                                                width: 280,
                                                child: new Text(
                                                  "6:20 AM",
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

                                    ])),


                              ]),
                            ))
                    ),
                    GestureDetector(
                        onTap: (){
                          //Navigator.pushNamed(context, '/ChangePassword');
                        },
                        child:
                        Container(
                            padding: EdgeInsets.only(
                                left: 5.0, right: 5.00,top:10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe4e9f2)),
                            ),
                            child: Card(
                              elevation: 3,
                              color: Colors.white,

                              child: Column(children: <Widget>[

                                new Container(
                                    padding: EdgeInsets.only(
                                        top: 5.0, bottom: 5.00,left: 10.0, right: 10.00),


                                    child: Column(children: <Widget>[
                                      new Row(children: <Widget>[


                                        Column(
                                          children: <Widget>[
                                            new Container(
                                                width:60,
                                                padding: EdgeInsets.only(
                                                    top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),

                                                child:
                                                Image(
                                                  image: AssetImage("assets/images/notifications/completed.png"),
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



                                                    right: 20.00),
                                                width: 280,
                                                child: new Text(
                                                  "Your Order 123221 is completed",
                                                  style: new TextStyle(
                                                      fontSize: 16.0,
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
                                              SizedBox(width: 10.0),
                                              Container(
                                                width: 280,
                                                child: new Text(
                                                  "6:20 AM",
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

                                    ])),


                              ]),
                            ))
                    ),


                    Expanded(

                      child:Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width:250,
                              child:RawMaterialButton(
                                onPressed: () {},
                                child: new Icon(
                                  FontAwesomeIcons.trashAlt,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                                shape: new CircleBorder(),
                                elevation: 2.0,
                                fillColor: Color(0xffec5041),
                                padding: const EdgeInsets.all(15.0),
                              ),

                            )
                        ),
                      ),
                    ),







                  ],
                )
            )


          ],
        )
                    )
    ]
    );

  }

}
