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

class ChangePassword extends StatefulWidget {
  ChangePasswordState createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  SharedPreferences shard;
  bool _autoValidate = false;
  bool _loadingVisible = false;
  StateModel appState;

  @override
  void initState() {
    super.initState();
    // StateWidget.of(context).initUser();
  }




  Widget build(BuildContext context) {




      final password = Container(
          color: Colors.white,
          child: TextFormField(
            style: new TextStyle(fontFamily: 'Poppins'),
            autofocus: false,
            obscureText: true,
            controller: _password,
            // validator: Validator.validatePassword,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.lock,
                  color: Color(0xFF2541a6),
                ), // icon is 48px widget.
              ),
              // icon is 48px widget.
              hintText: 'Current Password',
              hintStyle: new TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontFamily: 'Poppins',
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
            ),
          ));
      final newpassword = Container(
          color: Colors.white,
          child: TextFormField(
            style: new TextStyle(fontFamily: 'Poppins'),
            autofocus: false,
            obscureText: true,
            controller: _password,
            // validator: Validator.validatePassword,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.lock,
                  color: Color(0xFF2541a6),
                ), // icon is 48px widget.
              ),
              // icon is 48px widget.
              hintText: 'New Password',
              hintStyle: new TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontFamily: 'Poppins',
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
            ),
          ));
      final confirmNewpassword = Container(
          color: Colors.white,
          child: TextFormField(
            style: new TextStyle(fontFamily: 'Poppins'),
            autofocus: false,
            obscureText: true,
            controller: _password,
            // validator: Validator.validatePassword,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.lock,
                  color: Color(0xFF2541a6),
                ), // icon is 48px widget.
              ),
              // icon is 48px widget.
              hintText: 'Confirm New Password',
              hintStyle: new TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontFamily: 'Poppins',
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
            ),
          ));


      final updateButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0),
        child: RaisedButton(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {

          },
          padding: EdgeInsets.all(12),
          color: Color(0xFF00269d),
          child: Text('Update',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold)),
        ),
      );




      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,

            title: Text(
              "Change Password",
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: LoadingScreen(

                  child: Form(

                    key: _formKey,
                    autovalidate: _autoValidate,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),

                      child: SingleChildScrollView(
                          child:Container(

                            padding: EdgeInsets.only(top:50),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                password,
                                SizedBox(height: 24.0),
                                newpassword,
                                SizedBox(height: 24.0),
                                confirmNewpassword,
                                SizedBox(height: 24.0),
                                updateButton,
                              ],
                            ) ,
                          )

                      ),

                    ),
                  ),
                  inAsyncCall: _loadingVisible),
            )
          ],


        ),
      );
    }
  }

