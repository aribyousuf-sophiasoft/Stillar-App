import 'dart:convert';

import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  @override


  StateModel appState;

  Widget build(BuildContext context)

  {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }


    final AddShippingAddress = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Theme.of(context).primaryColor,
        child: Text('AddShippingAddress', style: TextStyle(color: Colors.white)),
      ),
    );

    // TODO: implement build
    return new Center(
      child: new Text("Hello "+appState?.user?.firstName ?? ''),

    );




  }



}

