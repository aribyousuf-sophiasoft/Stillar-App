import 'dart:ui';
import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/transitions.dart';
import 'package:chat_app/ui/screens/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_app/util/alert.dart';

class terms extends StatefulWidget {
  _termsState createState() => _termsState();
}

class _termsState extends State<terms> {


  @override
  void initState() {
    super.initState();
    // StateWidget.of(context).initUser();
  }




  Widget build(BuildContext context) {





    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,

          title: Text(
            "Terms & Conditions",
            style: new TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins'),
          ),
          backgroundColor: Colors.transparent,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
                onPressed: () {}),
            new IconButton(
                icon: new Icon(
                  FontAwesomeIcons.shoppingCart,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ]
      ),
      body: Stack(
          children: <Widget>[
            Container(
              child:
              SingleChildScrollView(
                  child:Container(

                    padding: EdgeInsets.only(top:20,left: 20,right:10),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Wrap(
                          children: <Widget>[
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex.",
                              style: new TextStyle(
                                  wordSpacing: 2,
                                  height: 1.7,
                                  fontSize: 13,
                                  color: Color(0xff363d5b),
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0),
                        Wrap(
                          children: <Widget>[
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex.",
                              style: new TextStyle(
                                  wordSpacing: 2,
                                  height: 1.7,
                                  fontSize: 13,
                                  color: Color(0xff363d5b),
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0),
                        Wrap(
                          children: <Widget>[
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex.",
                              style: new TextStyle(
                                  wordSpacing: 2,
                                  height: 1.7,
                                  fontSize: 13,
                                  color: Color(0xff363d5b),
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0),
                        Wrap(
                          children: <Widget>[
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex.",
                              style: new TextStyle(
                                  wordSpacing: 2,
                                  height: 1.7,
                                  fontSize: 13,
                                  color: Color(0xff363d5b),
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        )

                      ],
                    ) ,
                  )

              ),
            )
          ]


      ),
    );
  }
}

