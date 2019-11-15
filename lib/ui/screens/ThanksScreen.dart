import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ThanksScreen extends StatefulWidget {
  _ThanksScreenState createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen> {
  StateModel appState;

  Widget build(BuildContext context) {
    appState = StateWidget
        .of ( context )
        .state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen ( );
    }

    return new Stack(
        children: <Widget>[
          new Container(
            height: double.infinity ,
            width: double.infinity ,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage( "assets/images/login/background.png" ) ,
                fit: BoxFit.cover ,
              ) ,
            ) ,
          ) ,
          Scaffold (
            backgroundColor: Colors.transparent ,

            body: Center(
              child:
              Column(


                children: <Widget>[

                Container(
                  padding: EdgeInsets.only(top:40),
                  height: 300,
                  child:   Image(
                    image: new AssetImage( "assets/images/cart-5/ufo.png" ) ,
                  ),

                ),
                Container(
                  padding: EdgeInsets.only(top:10),
                  child: Text(
                    "Thank You For Ordering!",
                    style: new TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:10),
                  child: Text(
                    "Thank You For Ordering Through Stilaar",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Color(0xff9ca4ab),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:5),
                  child: Text(
                    "Your order has been placed",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Color(0xff9ca4ab),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'),
                  ),
                ),

                Container(
                  width: 340,
                  child:Card(
                    elevation: 3,
                    child:
                      Container(
                        padding: EdgeInsets.only(left:20,right:20,top:20,bottom:20),
                        child:Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  "Order ID",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),


                              ],),
                              SizedBox(width:150),
                              Column(children: <Widget>[
                                Text(
                                  "ASX 182",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),

                              ],)

                            ],),
                            SizedBox(height: 7),
                            Row(children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  "Order Time",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),


                              ],),
                              SizedBox(width:130),
                              Column(children: <Widget>[
                                Text(
                                  "14:00",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),

                              ],)

                            ],),
                            SizedBox(height: 7),
                            Row(children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  "Order Date",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),


                              ],),
                              SizedBox(width:130),
                              Column(children: <Widget>[
                                Text(
                                  "June 11, 2019",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),

                              ],)

                            ],),
                            SizedBox(height: 7),
                            Row(children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  "Delivery Time",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),


                              ],),
                              SizedBox(width:115),
                              Column(children: <Widget>[
                                Text(
                                  "15:00",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),

                              ],)

                            ],),
                            SizedBox(height: 7),
                            Row(children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  "Delivery Date",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),


                              ],),
                              SizedBox(width:115),
                              Column(children: <Widget>[
                                Text(
                                  "June 11, 2019",
                                  style: new TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff202c4e),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins'),
                                ),

                              ],)

                            ],),

                          ],
                        )
                      )
                  )
                ),
                Container(
                  width:340,
                    padding: EdgeInsets.only(left:15,right:15,top:20),
                    child:RaisedButton(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {Navigator.pushNamed(context, '/MainMenu');},
                      padding: EdgeInsets.all(12),
                      color: Color(0xFF00269d),
                      child: Text('Done',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )
                )



              ],),
            ),
          )
        ]
    );
  }
}