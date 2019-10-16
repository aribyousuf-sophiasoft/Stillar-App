import 'package:flutter/material.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/ui/screens/sign_in.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/home.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Home',
              color: Colors.black),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/profile.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Profile',
              color: Colors.black),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/history.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Order History',
              color: Colors.black),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/scheduled.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Scheduled Orders',
              color: Colors.black),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/wallet.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Wallet',
              color: Colors.black),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/settings.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Account Settings',
              color: Colors.black),
          Divider(
            color: Colors.grey,
          ),
          _createDrawerItem(
              icon: new Image(
                height: 25,
                width: 48,
                image: new AssetImage("assets/images/drawer/logout.png"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              text: 'Logout',
              onTap: () {
                StateWidget.of(context).logOutUser();
                Navigator.of(context).pop();
              },
              color: Colors.black),
          new Container(
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 30.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'App Version 1.0.1',
                      style: new TextStyle(color: Colors.grey, fontFamily: 'Poppins',  fontSize: 10, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'Copyright © 2019 Stillar.',
                      style: new TextStyle(color: Colors.grey, fontFamily: 'Poppins',  fontSize: 10, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/drawer/top.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {Image icon, String text, GestureTapCallback onTap, Color color}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 1.0)),
              icon,
              Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Text(
                  text,
                  style: new TextStyle(color: color, fontFamily: 'Poppins'),
                ),
              )
            ],
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
