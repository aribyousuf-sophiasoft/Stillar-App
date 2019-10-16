import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/Profile.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/widgets/app_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  String title;
  Image icon;

  DrawerItem(this.title, this.icon);
}

StateModel appState;

class Menu extends StatefulWidget {

  final drawerItems = [
    new DrawerItem(
        "Home", new Image.asset('images/1080x1920/customer/sidebar/home.png')),
    new DrawerItem("Profile",
        new Image.asset('images/1080x1920/customer/sidebar/profile.png')),
  ];

  @override
  State<StatefulWidget> createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen();
      case 1:
        return new Profile();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  Widget _drawer() {
    var drawerOptions = <Widget>[];
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return null;
    }

    else if (!appState.user.otpAuthenticated)
    {
      return null;
    }
    else
     {
      for (var i = 0; i < widget.drawerItems.length; i++) {
        var d = widget.drawerItems[i];
        drawerOptions.add(new ListTile(
          leading: d.icon,
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ));
      }

      return Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text(appState?.user?.firstName ?? ''),
                accountEmail: null),
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
    }

    else if (!appState.user.otpAuthenticated)
    {
      return null;
    }
    else {
      return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          iconTheme: new IconThemeData(color: Colors.black),
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title,
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
                onPressed: () {}),
            new IconButton(
                icon: new Icon(
                  FontAwesomeIcons.shoppingCart,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ]
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _appBar(),
      drawer: AppDrawer(),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
