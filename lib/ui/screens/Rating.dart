import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatefulWidget {
  _RatingState createState() => _RatingState();
}



class _RatingState extends State<Rating> {
  StateModel appState;


  @override
  Widget build(BuildContext context) {
    bool isSuccessful= false;
    appState = StateWidget
        .of ( context )
        .state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen ( );
    }

    return new Stack( children: <Widget>[
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
          appBar: AppBar (
              elevation: 0 ,
              backgroundColor: Colors.transparent ,
              title: Text (
                "Rate" ,
                style: new TextStyle(
                    fontSize: 24 ,
                    color: Colors.black ,
                    fontWeight: FontWeight.w700 ,
                    fontFamily: 'Poppins' ) ,
              ) ,
              leading: new IconButton(
                icon: new Icon( Icons.arrow_back_ios , color: Colors.black ) ,
                onPressed: () =>
                    Navigator.pushNamed ( context , '/ActiveOrderDetails' ) ,
              ) ,
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.envelope ,
                      color: Colors.black ,
                    ) ,
                    onPressed: () {} ) ,
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.phone ,
                      color: Colors.black ,
                    ) ,
                    onPressed: () {} ) ,
              ] ) ,
          body:





          Column(
    children: <Widget>[
            Draggable(
              data: 'Flutter',
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
              feedback:  Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
              childWhenDragging:  Container(

              ),
            ),
    DragTarget(
    builder: (context, List<String> candidateData, rejectedData) {
    return Center(
    child: isSuccessful
    ? Padding(
    padding: EdgeInsets.only(top: 100.0),
    child: Container(
    color: Colors.yellow,
    height: 200.0,
    width: 200.0,
    child: Center(
    child: FlutterLogo(
    size: 100.0,
    )),
    ),
    )
        : Container(
    height: 200.0,
    width: 200.0,
    color: Colors.yellow,
    ),
    );
    },
    onWillAccept: (data) {
    return true;
    },
    onAccept: (data) {
    setState(() {
    isSuccessful = true;
    });
    },
    ),
    ]
          )
      )
    ],
    );
  }
}
