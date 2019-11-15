import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/Profile.dart';
import 'package:chat_app/ui/widgets/app_drawer.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AccountSettings.dart';
import 'OrderHistory.dart';
import 'ScheduledOrders.dart';

class DrawerItem {
  String title;
  Image icon;

  DrawerItem(this.title, this.icon);
}

StateModel appState;

class Menu extends StatefulWidget {








  @override
  State<StatefulWidget> createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {
  int _selectedDrawerIndex = 0;
  String _title="Home";

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen();
      case 1:
        return new Profile();
      case 2:
        return new OrderHistory();
      case 3:
        return new ScheduledOrders();
      case 5:
        return new AccountSettings();

      default:
        return new Text("Error");
    }
  }







  _onSelectItem(int index,String Title) {
    setState(() => _selectedDrawerIndex = index);
    setState(() => _title = Title);
    Navigator.of(context).pop(); // close the drawer
  }



  Widget _drawer() {
    var drawerOptions = <Widget>[];
    appState = StateWidget.of(context).state;

    if (!appState.isLoading && (appState.user == null)) {
      return null;
    } else if (!appState.user.otpAuthenticated) {
      return null;
    } else {
     /* for (var i = 0; i < widget.drawerItems.length; i++) {
        var d = widget.drawerItems[i];
        drawerOptions.add(d);
      }*/

      return Drawer(
        child: new Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/drawer/top.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      );
    }
  }

  Widget _appBar() {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return null;
    } else if (!appState.user.otpAuthenticated && (appState.user != null)) {
      return null;
    } else {
      return AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: new IconThemeData(color: Colors.black),
          // here we display the title corresponding to the fragment
          // you can instead choose to have a static title
          title: new Text(_title,
              style: new TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins')),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Notifcations');

                }),
            new IconButton(
                icon: new Icon(
                  FontAwesomeIcons.shoppingCart,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Cart');
                }),
          ]);
    }
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







  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: _appBar(),
      drawer:  Drawer(
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
            onTap: () {

              _onSelectItem(0,"Home");
            },
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
            onTap: () {

              _onSelectItem(1,"Profile");
            },
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
            onTap: () {

              _onSelectItem(2,"Order History");
            },
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
            onTap: () {

              _onSelectItem(3,"Scheduled Orders");
            },
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
            onTap: () {

              _onSelectItem(5,"Account Settings");
            },
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
                    style: new TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Copyright © 2019 Stillar.',
                    style: new TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),

    );
  }
}
