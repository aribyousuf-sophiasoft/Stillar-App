import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckOutShipping extends StatefulWidget {
  _CheckOutShippingState createState() => _CheckOutShippingState();
}

class _CheckOutShippingState extends State<CheckOutShipping> {
  StateModel appState;

  var _orderRecurring = [
    "One Time",
    "Weekly",
    "Monthly"
  ];

  final AddressHome = Container(
      padding: EdgeInsets.only(
          left: 5.0, right: 5.00),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffe4e9f2)),
      ),
      child: Card(
        elevation: 3,
        color: Colors.white,

        child: Column(children: <Widget>[

          new Container(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),


              child: Column(children: <Widget>[
                new Row(children: <Widget>[


                  Column(
                    children: <Widget>[
                      new Container(
                          width:60,
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe4e9f2))
                          ),
                          child:
                          Image(
                            image: AssetImage("assets/images/profile/home.png"),
                          )
                      )

                    ],
                  ),
                  Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                          Container(

                            padding: EdgeInsets.only(


                                left: 10.00,
                                right: 20.00),
                            width: 200,
                            child: new Text(
                              "Home",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff8c8c8c),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          ),





                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 15),


                          Container(
                            width: 200,
                            child: new Text(
                              "Lorem Ipsum is simply dummy text of the printing ",
                              overflow: TextOverflow.clip,
                              style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff8c8c8c),
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.left,
                            ),
                          )



                      ],
                    ),
                  ]),
                  Column(
                    children: <Widget>[

                          Container(

                          padding: EdgeInsets.only(


                            left: 10.00,
                          ),
                          width: 40,
                          child: CircularCheckBox(

                            value: true,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Color(0xff4eb49f),


                          ),
                        )

                    ],
                  )
                ]),


              ]))
        ]),
      ));

  final AddressOffice = Container(
      padding: EdgeInsets.only(
          left: 5.0, right: 5.00),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffe4e9f2)),
      ),
      child: Card(
        elevation: 3,
        color: Colors.white,

        child: Column(children: <Widget>[

          new Container(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),


              child: Column(children: <Widget>[
                new Row(children: <Widget>[


                  Column(
                    children: <Widget>[
                      new Container(
                          width:60,
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe4e9f2))
                          ),
                          child:
                          Image(
                            image: AssetImage("assets/images/profile/office.png"),
                          )
                      )

                    ],
                  ),
                  Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Container(

                          padding: EdgeInsets.only(

                              left: 10.00,
                              right: 20.00),
                          width: 200,
                          child: new Text(
                            "Office",
                            style: new TextStyle(
                                fontSize: 20.0,
                                color: Color(0xff8c8c8c),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Container(
                          width: 200,
                          child: new Text(
                            "Lorem Ipsum is simply dummy text of the printing ",
                            overflow: TextOverflow.clip,
                            style: new TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff8c8c8c),
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ]),
                  Column(
                    children: <Widget>[

                      Container(

                        padding: EdgeInsets.only(


                          left: 10.00,
                        ),
                        width: 40,
                        child: CircularCheckBox(

                          value: false,
                          materialTapTargetSize: MaterialTapTargetSize.padded,

                        ),
                      )

                    ],
                  )
                ]),

              ]))
        ]),
      ));

  final AddressWareHouse = Container(
      padding: EdgeInsets.only(
          left: 5.0, right: 5.00),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffe4e9f2)),
      ),
      child: Card(
        elevation: 3,
        color: Colors.white,

        child: Column(children: <Widget>[

          new Container(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),


              child: Column(children: <Widget>[
                new Row(children: <Widget>[


                  Column(
                    children: <Widget>[
                      new Container(
                          width:60,
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.00,left: 10.0, right: 10.00),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe4e9f2))
                          ),
                          child:
                          Image(
                            image: AssetImage("assets/images/profile/warehouse.png"),
                          )
                      )

                    ],
                  ),
                  Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Container(

                          padding: EdgeInsets.only(

                              left: 10.00,
                              right: 20.00),
                          width: 200,
                          child: new Text(
                            "Warehouse",
                            style: new TextStyle(
                                fontSize: 20.0,
                                color: Color(0xff8c8c8c),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Container(
                          width: 200,
                          child: new Text(
                            "Lorem Ipsum is simply dummy text of the printing ",
                            overflow: TextOverflow.clip,
                            style: new TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff8c8c8c),
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ]),
                  Column(
                    children: <Widget>[

                      Container(

                        padding: EdgeInsets.only(


                          left: 10.00,
                        ),
                        width: 40,
                        child: CircularCheckBox(

                          value: false,
                          materialTapTargetSize: MaterialTapTargetSize.padded,

                        ),
                      )

                    ],
                  )
                ]),

              ]))
        ]),
      ));
  @override
  Widget build(BuildContext context) {
    appState = StateWidget.of(context).state;
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    }
    return new Stack(children: <Widget>[
      new Container(
        height: double.infinity,
        width: double.infinity,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/login/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Shipping",
            style: new TextStyle(
                fontSize: 24,
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
                    FontAwesomeIcons.plus,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ]
        ),
        body: SingleChildScrollView(

    child:
    new Container(
      padding: EdgeInsets.only(left:25,right:25),
      color: Colors.transparent,
      child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left:10,right:5,top:10),
                            child:
                            Row(

                              children: <Widget>[
                                Container(

                                  width: 100,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00259c),
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left:10,right:5,top:10),
                            child:
                            Row(

                              children: <Widget>[
                                Container(

                                width: 100,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Color(0xffabbae5),
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left:10,right:5,top:10),
                            child:
                            Row(

                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Color(0xffabbae5),
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(left:5,right:5,top:10),

                        child:Card(
    elevation: 3,
    color: Colors.white,
    child:
    DropdownButtonFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Icon(
            FontAwesomeIcons.calendarAlt,
            size: 17,
            color: Color(0xFF2541a6),
          ), // icon is 48px widget.
        ),
        hintStyle: new TextStyle(
          color: Colors.grey,
          fontSize: 13,
          fontFamily: 'Poppins',
        ),
        hintText: 'Order Recurring',

        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
      ),

      items: _orderRecurring.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    )
                      ),
                      Container(
                          padding: EdgeInsets.only(left:5,right:5,top:15),
                          child:Row(
                            children: <Widget>[
    Flexible(
    child:
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right:10),

                                      child:
    Card(
    elevation: 3,
    color: Colors.white,
    child:
                                       TextFormField(
                                        style: new TextStyle(fontFamily: 'Poppins'),
                                        autofocus: false,
                                        obscureText: true,
                                        keyboardType: TextInputType.datetime,
                                        // validator: Validator.validatePassword,
                                        decoration: InputDecoration(
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Icon(
                                              FontAwesomeIcons.calendar,
                                              color: Color(0xFF2541a6),
                                            ), // icon is 48px widget.
                                          ),
                                          // icon is 48px widget.
                                          hintText: 'Preffered Date',
                                          hintStyle: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                          ),


                                        ),
                                      ))
                                  ),


                                ],
                              ),
    ),
                              Flexible(
                                child:
                                Column(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left:10),

                                        child:
                                        Card(
                                            elevation: 3,
                                            color: Colors.white,
                                            child:
                                            TextFormField(
                                              style: new TextStyle(fontFamily: 'Poppins'),
                                              autofocus: false,
                                              obscureText: true,
                                              keyboardType: TextInputType.datetime,
                                              // validator: Validator.validatePassword,
                                              decoration: InputDecoration(
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.only(left: 5.0),
                                                  child: Icon(
                                                    FontAwesomeIcons.clock,
                                                    color: Color(0xFF2541a6),
                                                  ), // icon is 48px widget.
                                                ),
                                                // icon is 48px widget.
                                                hintText: 'Preffered Time',
                                                hintStyle: new TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins',
                                                ),


                                              ),
                                            ))
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          )

                      ),
                      SizedBox(height: 15),
                      AddressHome,
                      SizedBox(height: 15),
                      AddressOffice,
                      SizedBox(height: 15),
                      AddressWareHouse,
                      SizedBox(height: 15),
                      Container(
                      padding: EdgeInsets.only(left:15,right:15),
                      child:RaisedButton(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/CheckOutConfirmation');},
                        padding: EdgeInsets.all(12),
                        color: Color(0xFF00269d),
                        child: Text('Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      )
                      )


                    ],
                  ),




    )
      )
      )]);
  }
}
