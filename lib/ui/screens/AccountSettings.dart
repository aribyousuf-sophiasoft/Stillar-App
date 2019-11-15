import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountSettings extends StatefulWidget {
  AccountSettingsstate createState() => AccountSettingsstate();

}


class AccountSettingsstate extends State<AccountSettings> {

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

    return Scaffold(
        backgroundColor: Color(0xFFffffff),
    body: Stack(
        children: <Widget>[
    Container(
        padding: EdgeInsets.only(top:10),
        child:
          Column(

            children: <Widget>[
            Container(
                    decoration:
                  BoxDecoration(
                      border: Border(
                        bottom: BorderSide( //                   <--- left side
                          color: Color(0xffeaedf5),
                          width: 1.5,
                        ),
                      )
                  ),
                  child: Row(

                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                              width:50,
                              padding: EdgeInsets.only(left:10,right: 10.00),
                              child:
                              Image(
                                image: AssetImage("assets/images/account-settings/notification.png"),
                                height: 20,
                              )
                          )


                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width:280,
                            child: Text("Notifications",
                                style: new TextStyle(
                                  color: Color(0xFF0e1b44),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                )),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            child: Switch(
                              value: true,
                              onChanged: (value) {
                                setState(() {
                                  Switched = value;
                                });
                              },
                              activeTrackColor: Color(0xff4bd963),
                              activeColor: Colors.white,
                            ),
                          )
                        ],
                      )

                    ],
                  ) ,
                ),
                    GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/ChangePassword');
    },
    child:
              Container(
                padding: EdgeInsets.only(top:15,bottom:10),
                decoration:
                BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                        color: Color(0xffeaedf5),
                        width: 1.5,
                      ),
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            width:50,
                            padding: EdgeInsets.only(left:10,right: 10.00),
                            child:
                            Image(
                              image: AssetImage("assets/images/account-settings/password.png"),
                              height: 20,
                            )
                        )


                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:280,
                          child: Text("Change Password",
                              style: new TextStyle(
                                color: Color(0xFF0e1b44),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              )),
                        )
                      ],
                    ),


                  ],
                ) ,
              ),
                    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, '/Help');
    },
    child:
              Container(
                padding: EdgeInsets.only(top:15,bottom:10),
                decoration:
                BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                        color: Color(0xffeaedf5),
                        width: 1.5,
                      ),
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            width:50,
                            padding: EdgeInsets.only(left:10,right: 10.00),
                            child:
                            Image(
                              image: AssetImage("assets/images/account-settings/help.png"),
                              height: 20,
                            )
                        )


                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:280,
                          child: Text("Help & Support",
                              style: new TextStyle(
                                color: Color(0xFF0e1b44),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              )),
                        )
                      ],
                    ),


                  ],
                ) ,
              ),
    ),

    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, '/PrivacyPolicy');
    },
    child:
              Container(
                padding: EdgeInsets.only(top:15,bottom:10),
                decoration:
                BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                        color: Color(0xffeaedf5),
                        width: 1.5,
                      ),
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            width:50,
                            padding: EdgeInsets.only(left:10,right: 10.00),
                            child:
                            Image(
                              image: AssetImage("assets/images/account-settings/privacy.png"),
                              height: 20,
                            )
                        )


                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:280,
                          child: Text("Privacy Policy",
                              style: new TextStyle(
                                color: Color(0xFF0e1b44),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              )),
                        )
                      ],
                    ),


                  ],
                ) ,
              ),
    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, '/Terms');
    },
    child:
              Container(
                padding: EdgeInsets.only(top:15,bottom:10),
                decoration:
                BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                        color: Color(0xffeaedf5),
                        width: 1.5,
                      ),
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            width:50,
                            padding: EdgeInsets.only(left:10,right: 10.00),
                            child:
                            Image(
                              image: AssetImage("assets/images/account-settings/terms.png"),
                              height: 20,
                            )
                        )



                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:280,
                          child: Text("Terms & Conditions",
                              style: new TextStyle(
                                color: Color(0xFF0e1b44),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              )),
                        )
                      ],
                    ),


                  ],
                ) ,
              ),
    ),
    Expanded(

    child:Padding(
    padding: EdgeInsets.symmetric(vertical: 18.0),
    child: Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width:350,
    child:RaisedButton(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: () {
      },
      padding: EdgeInsets.all(12),
      color: Color(0xffec5041),
      child: Text('Delete Account',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.bold)),
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
    );

  }

}
