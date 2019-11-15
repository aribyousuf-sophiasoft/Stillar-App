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

class privacyPolicy extends StatefulWidget {
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<privacyPolicy> {


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
            "Privacy Policy",
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
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex. Sed pellentesque fermentum nisl, sed convallis eros tincidunt ac. Sed odio nunc, euismod ut ultricies feugiat, pulvinar et lectus. Sed interdum quis justo quis finibus. Proin consequat maximus libero, a maximus nulla placerat ac. Suspendisse convallis imperdiet sodales. Aliquam in turpis sed nunc lobortis vulputate nec et elit. Nunc sed nibh mi. Donec dolor lacus, interdum id nulla non, ullamcorper mollis libero. Suspendisse gravida elit in ligula rhoncus pulvinar.",
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
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida leo id enim iaculis luctus. Etiam ac nulla sagittis, fermentum massa eu, sagittis tortor. Duis quis finibus metus, a finibus nisl. Donec cursus feugiat justo, non bibendum quam congue eu. Nulla ac facilisis elit. Morbi maximus leo in augue euismod dapibus. Curabitur vitae libero ex. Sed pellentesque fermentum nisl, sed convallis eros tincidunt ac. Sed odio nunc, euismod ut ultricies feugiat, pulvinar et lectus. Sed interdum quis justo quis finibus. Proin consequat maximus libero, a maximus nulla placerat ac. Suspendisse convallis imperdiet sodales. Aliquam in turpis sed nunc lobortis vulputate nec et elit. Nunc sed nibh mi. Donec dolor lacus, interdum id nulla non, ullamcorper mollis libero. Suspendisse gravida elit in ligula rhoncus pulvinar.",
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

