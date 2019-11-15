import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ActiveOrderDetails extends StatefulWidget {
  _ActiveOrderDetailsState createState() => _ActiveOrderDetailsState();
}

class _ActiveOrderDetailsState extends State<ActiveOrderDetails> {
  StateModel appState;

  static final sugarFreeTag = Container (
      height: 23 ,
      width: 120.0 ,
      child: RaisedButton (
        disabledColor: Color ( 0xFF3598dc ) ,
        color: Color ( 0xFF3598dc ) ,
        elevation: 4.0 ,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular( 50.0 ) ,
        ) ,
        highlightElevation: 4.0 ,
        child: Row ( children: <Widget>[
          Icon (
            FontAwesomeIcons.hashtag ,
            color: Colors.white ,
            size: 11 ,
          ) ,
          new Padding( padding: EdgeInsets.only ( left: 1.0 ) ) ,
          Text ( "Sugar Free" ,
              style: new TextStyle(
                color: Colors.white ,
                fontSize: 11 ,
                fontFamily: 'Poppins' ,
              ) ) ,
        ] ) ,
      ) );

  static final measurementTag = Container (
      height: 23 ,
      width: 105.0 ,
      child: RaisedButton (
        disabledColor: Color ( 0xFFed8175 ) ,
        color: Color ( 0xFFed8175 ) ,
        elevation: 4.0 ,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular( 50.0 ) ,
        ) ,
        highlightElevation: 4.0 ,
        child: Row (
          children: <Widget>[
            Icon (
              FontAwesomeIcons.hashtag ,
              color: Colors.white ,
              size: 11 ,
            ) ,
            new Padding( padding: EdgeInsets.only ( left: 1.0 ) ) ,
            Text ( "1.25 LTR" ,
                style: new TextStyle(
                  color: Colors.white ,
                  fontSize: 11 ,
                  fontFamily: 'Poppins' ,
                ) ) ,
          ] ,
        ) ,
      ) );

  static final quantityTag = Container (
      height: 23 ,
      width: 110.0 ,
      child: RaisedButton (
        disabledColor: Color ( 0xFFed8175 ) ,
        color: Color ( 0xFFed8175 ) ,
        elevation: 4.0 ,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular( 50.0 ) ,
        ) ,
        highlightElevation: 4.0 ,
        child: Row (
          children: <Widget>[
            Icon (
              FontAwesomeIcons.hashtag ,
              color: Colors.white ,
              size: 11 ,
            ) ,
            new Padding( padding: EdgeInsets.only ( left: 1.0 ) ) ,
            Text ( "2 Bottles" ,
                style: new TextStyle(
                  color: Colors.white ,
                  fontSize: 11 ,
                  fontFamily: 'Poppins' ,
                ) ) ,
          ] ,
        ) ,
      ) );

  static final migrosTag = Container (
      height: 23 ,
      width: 100.0 ,
      child: RaisedButton (
        disabledColor: Color ( 0xFF30ba7c ) ,
        color: Color ( 0xFF30ba7c ) ,
        elevation: 4.0 ,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular( 50.0 ) ,
        ) ,
        highlightElevation: 4.0 ,
        child: Row (
          children: <Widget>[
            Icon (
              FontAwesomeIcons.hashtag ,
              color: Colors.white ,
              size: 11 ,
            ) ,
            new Padding( padding: EdgeInsets.only ( left: 1.0 ) ) ,
            Text ( "Migros" ,
                style: new TextStyle(
                  color: Colors.white ,
                  fontSize: 11 ,
                  fontFamily: 'Poppins' ,
                ) ) ,
          ] ,
        ) ,
      ) );

  static final typeTag = Container (
      height: 23 ,
      width: 100.0 ,
      child: RaisedButton (
        disabledColor: Color ( 0xFFf5b516 ) ,
        color: Color ( 0xFFf5b516 ) ,
        elevation: 1.0 ,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular( 50.0 ) ,
        ) ,
        highlightElevation: 4.0 ,
        child: Row (
          children: <Widget>[
            Icon (
              FontAwesomeIcons.hashtag ,
              color: Colors.white ,
              size: 11 ,
            ) ,
            new Padding( padding: EdgeInsets.only ( left: 1.0 ) ) ,
            Text ( "Chilled" ,
                style: new TextStyle(
                  color: Colors.white ,
                  fontSize: 11 ,
                  fontFamily: 'Poppins' ,
                ) ) ,
          ] ,
        ) ,
      ) );

  static final suggestedTagsLabel = Row (
    mainAxisAlignment: MainAxisAlignment.start ,
    children: <Widget>[
      Text (
        'Suggested Tags' ,
        style: TextStyle (
            fontSize: 12 ,
            color: Colors.black ,
            fontFamily: 'Poppins' ,
            fontWeight: FontWeight.bold ) ,
      ) ,
    ] ,
  );
  final _checkOutProduct = Stack (
    children: <Widget>[
      Container (
          padding: EdgeInsets.only ( left: 5.0 , right: 5.00 ) ,
          child: Card (
            elevation: 4 ,
            child: Column ( children: <Widget>[
              new Container(
                  padding: EdgeInsets.only (
                      top: 10.0 , bottom: 5.00 , left: 10.0 , right: 10.00 ) ,
                  child: Column ( children: <Widget>[
                    new Row( children: <Widget>[
                      Column (
                        children: <Widget>[
                          new Container(
                              width: 60 ,
                              padding: EdgeInsets.only (
                                  top: 10.0 ,
                                  bottom: 40.00 ,
                                  left: 10.0 ,
                                  right: 8.00 ) ,
                              decoration: BoxDecoration (
                                  border: Border.all (
                                      color: Color ( 0xffe4e9f2 ) ) ) ,
                              child: Image (
                                image: new NetworkImage(
                                    'https://domreii.com/pub/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/c/o/cokezero.jpg' ) ,
                              ) )
                        ] ,
                      ) ,
                      Column ( children: <Widget>[
                        Row (
                          mainAxisAlignment: MainAxisAlignment.start ,
                          children: <Widget>[
                            Container (
                              width: 220 ,
                              child: new Text(
                                "Coca Cola Zero" ,
                                style: new TextStyle(
                                    fontSize: 18.0 ,
                                    color: Color ( 0xff8c8c8c ) ,
                                    fontWeight: FontWeight.bold ,
                                    fontFamily: 'Poppins' ) ,
                                textAlign: TextAlign.left ,
                              ) ,
                            )
                          ] ,
                        ) ,
                        SizedBox ( height: 10.0 ) ,
                        Row (
                          children: <Widget>[
                            Padding (
                              padding: EdgeInsets.only ( left: 10.0 ) ,
                            ) ,
                            sugarFreeTag ,
                            Padding (
                              padding: EdgeInsets.only ( left: 10.0 ) ,
                            ) ,
                            migrosTag
                          ] ,
                        ) ,
                        SizedBox ( height: 10.0 ) ,
                        Row (
                          children: <Widget>[
                            quantityTag ,
                            Padding (
                              padding: EdgeInsets.only ( left: 10.0 ) ,
                            ) ,
                            typeTag
                          ] ,
                        ) ,
                        SizedBox ( height: 10.0 ) ,
                      ] ) ,
                    ] ) ,

                  ] ) ) ,
            ] ) ,
          ) ) ,
    ] ,
  );

  @override
  Widget build(BuildContext context) {
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
            leading: new IconButton(
              icon: new Icon( Icons.arrow_back_ios , color: Colors.black ) ,
              onPressed: () => Navigator.of ( context ).pop ( ) ,
            ) ,
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
              ]

          ) ,
          body: SingleChildScrollView (
            child:
                Center(

              child:
            Column(
              children: <Widget>[
                Container(

                  width:380,
                  child:
                  Card(
                    elevation: 3,
                    child:


                    Column(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
    border: Border(
    bottom: BorderSide( //                   <--- left side
    color: Color(0xffeaedf5),
    width: 2.0,
    ),)
    ),

                        child:
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              new Container(

                                width: 200,
                                padding: EdgeInsets.only(
                                    top:10.0,

                                    left: 20.0,
                                    right: 20.00),
                                child: Text('Order ID 1973222',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF0d1b41),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold)),
                              ),
                              new Container(
                                width: 200,
                                padding: EdgeInsets.only(

                                    left: 20.0,
                                    right: 10.00),
                                child: Text('Placed on Jun 12, 2019  16:00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFb1b1b1),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          SizedBox(width:30),
                          Column(

                            children: <Widget>[
                              new Container(

                                padding: EdgeInsets.only(
                                 
                                  top: 10.0,
                                ),
                                child: RaisedButton(
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  onPressed: () {
                                  },
                                  padding: EdgeInsets.all(7),
                                  color: Color(0xffec5041),
                                  child: Text('Cancel Order',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ),

                              ),

                            ],
                          ),



                        ],),

                      ),
                      Container(
                          padding: EdgeInsets.only(left:20,right:20,top:20,bottom:20),
                          child:Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    "Delivery Date",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffb6b6b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),


                                ],),
                                SizedBox(width:135),
                                Column(children: <Widget>[
                                  Text(
                                    "June 11, 2019",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff202c4e),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),

                                ],)

                              ],),
                              SizedBox(height: 7),
                              Row(children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    "Delivery Time",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffb6b6b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),


                                ],),
                                SizedBox(width:135),
                                Column(children: <Widget>[
                                  Text(
                                    "14:00",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff202c4e),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),

                                ],)

                              ],),
                              SizedBox(height: 7),
                              Row(children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    "Order Type",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color:Color(0xffb6b6b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),


                                ],),
                                SizedBox(width:149),
                                Column(children: <Widget>[
                                  Text(
                                    "Cash On Delivery",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff202c4e),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),

                                ],)

                              ],),
                              SizedBox(height: 7),
                              Row(children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    "Shipping Address",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffb6b6b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),


                                ],),
                                SizedBox(width:110),
                                Column(children: <Widget>[
                                  Text(
                                    "Abc Address",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff202c4e),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),

                                ],)

                              ],),
                              SizedBox(height: 7),
                              Row(children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    "Total Estimate",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffb6b6b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),


                                ],),
                                SizedBox(width:130),
                                Column(children: <Widget>[
                                  Text(
                                    "~ CHF 10",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff202c4e),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins'),
                                  ),

                                ],)

                              ],),

                            ],
                          )
                      ),




                    ],)

                  )
                ),
                Container(
                  width:380,
                  child:
                  Card(
                    elevation: 3,
                    child:


                    Column(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide( //                   <--- left side
                              color: Color(0xffeaedf5),
                              width: 2.0,
                            ),)
                      ),

            child:
            Row(children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(

                    width: 200,
                    padding: EdgeInsets.only(
                      top:10,
                        bottom:10,
                        left: 20.0,
                        right: 20.00),
                    child: Text('Order Status',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0d1b41),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(width:15),
              Column(

                children: <Widget>[
                  new Container(
                    width: 120,
                    padding: EdgeInsets.only(
                      top:10,
                      bottom:10,
                        right: 20.00
                    ),
                    child: Text('Order Placed',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFfbb450),
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,

                        )),
                  ),

                ],
              ),


            ],),

          ),
    Container(
    padding: EdgeInsets.only(top:20),
    child:
    Column(children: <Widget>[
      Container(
        height:100,
        child: Image(
          image: new AssetImage( "assets/images/order-active-details/purchasing-completed.png" ) ,
        ),
      ),

      Container(
        padding: EdgeInsets.only(top:10),
        child:Text('Purchasing Completed',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0d1b41),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),

      ),
      Container(
        padding: EdgeInsets.only(left:60),

        child: Row(children: <Widget>[
          Container(
              padding: EdgeInsets.only(left:10,right:10,top:10),
              child:  OutlineButton(

                borderSide: BorderSide(color: Color(0xFF00269d)),


                child: Text('Call Rider',
                    style: TextStyle(
                        color: Color(0xFF00269d),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                onPressed: () {},

              ),
          ),
          Container(
              padding: EdgeInsets.only(left:10,right:10,top:10),
              child:RaisedButton(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {Navigator.pushNamed(context, '/TrackOrder-PurchasingCompleted');},
                padding: EdgeInsets.only(left:20,right:20,top:10,bottom:10),
                color: Color(0xFF00269d),
                child: Text('Track Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              )
          ),
        ],),

      ),


      SizedBox(height:15)

    ],)
    ),
                      Container(
                          padding: EdgeInsets.only(top:20),
                          child:
                          Column(children: <Widget>[
                            Container(
                              height:100,
                              child: Image(
                                image: new AssetImage( "assets/images/order-active-details/order-palced.png" ) ,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top:10),
                              child:Text('Purchasing Completed',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF0d1b41),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold)),

                            ),

                                Container(
                                    padding: EdgeInsets.only(left:10,right:10,top:10),
                                    child:RaisedButton(
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      onPressed: () {Navigator.pushNamed(context, '/TrackOrder-OrderPlaced');},
                                      padding: EdgeInsets.only(left:20,right:20,top:10,bottom:10),
                                      color: Color(0xFF00269d),
                                      child: Text('Track Order',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),

                                ),

                            ),


                            SizedBox(height:15)

                          ],)
                      )

    ]
                    )

                )
                ),
                Container(
                  width:380,
                  padding:EdgeInsets.only(bottom:30),
                  child:
                  Card(
                    elevation: 3,
                    child:


                    Column(children: <Widget>[
                    Container(
                    decoration: BoxDecoration(
                        border: Border(
                        bottom: BorderSide( //                   <--- left side
                        color: Color(0xffeaedf5),
                    width: 2.0,
                  ),)
                ),

            child:
            Row(children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(

                    width: 200,
                    padding: EdgeInsets.only(
                        top:10,
                        bottom:10,
                        left: 20.0,
                        right: 20.00),
                    child: Text('Order Details',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0d1b41),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),



            ],),

          ),

                      _checkOutProduct,
                      _checkOutProduct,
        ]

                )
                  )
                )


            ],)
                ),
          )
      )
    ]
    );
  }
}
