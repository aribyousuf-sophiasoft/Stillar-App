import 'package:chat_app/ui/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/state.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/ui/screens/product_details.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/alert.dart';
import 'package:chat_app/util/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class userListScreen extends StatefulWidget {
  _userListScreen createState() => _userListScreen();
}

class _userListScreen extends State<userListScreen> {
  void initState() {
    super.initState();
  }

  bool _loadingVisible = false;
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  final cokeTag = Container(
      height: 23,
      width: 120.0,
      child: RaisedButton(
        disabledColor: Color(0xFF3598dc),
        color: Color(0xFF3598dc),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("CocaCola",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  final sugarFreeTag = Container(
      height: 23,
      width: 120.0,
      child: RaisedButton(
        disabledColor: Color(0xFF3598dc),
        color: Color(0xFF3598dc),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(children: <Widget>[
          Icon(
            FontAwesomeIcons.hashtag,
            color: Colors.white,
            size: 11,
          ),
          new Padding(padding: EdgeInsets.only(left: 1.0)),
          Text("Sugar Free",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Poppins',
              )),
        ]),
      ));

  final measurementTag = Container(
      height: 23,
      width: 105.0,
      child: RaisedButton(
        disabledColor: Color(0xFFed8175),
        color: Color(0xFFed8175),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("1.25 LTR",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  final quantityTag = Container(
      height: 23,
      width: 110.0,
      child: RaisedButton(
        disabledColor: Color(0xFFed8175),
        color: Color(0xFFed8175),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("2 Bottles",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  final migrosTag = Container(
      height: 23,
      width: 100.0,
      child: RaisedButton(
        disabledColor: Color(0xFF30ba7c),
        color: Color(0xFF30ba7c),
        elevation: 4.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("Migros",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  final typeTag = Container(
      height: 23,
      width: 100.0,
      child: RaisedButton(
        disabledColor: Color(0xFFf5b516),
        color: Color(0xFFf5b516),
        elevation: 1.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        highlightElevation: 4.0,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.white,
              size: 11,
            ),
            new Padding(padding: EdgeInsets.only(left: 1.0)),
            Text("Chilled",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                )),
          ],
        ),
      ));

  final suggestedTagsLabel = Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Suggested Tags',
        style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      ),
    ],
  );

  showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <Widget>[
          Container(
            color: Color(0xf8f9fb),
            child: Column(children: <Widget>[
              CupertinoActionSheetAction(
                child: new Text(
                  "Rename",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  //Navigator.pop ( context , 'One' );
                },
              ),
              CupertinoActionSheetAction(
                child: new Text(
                  "Add to cart",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: new Text(
                  "Share",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: new Text(
                  "Delete",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              )
            ]),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(
                child: new Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: new Container(
                child: new Column(children: <Widget>[
              new Padding(padding: EdgeInsets.only(left: 10.00, top: 10.00)),
              new Container(
                color: Color(0xffeeeeee),
                child: new Row(
                  children: <Widget>[
                    new Padding(
                        padding: EdgeInsets.only(left: 20.00, top: 20.00)),
                    new Text(
                      "Lists",
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              new Container(
                  height: 220,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numbers.length,
                      itemBuilder: (context, index) {
                        return    GestureDetector(
                            onTap: (){
                          Navigator.pushNamed(context, '/UserListDetails ');
                        },
                        child: Container(
                          width: 210,
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            child: Container(
                              child: Column(children: <Widget>[
                                Card(
                                  elevation: 2,
                                  child: Container(
                                    height: 160,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: new NetworkImage(
                                            'https://www.pointpleasantresort.com/sites/default/files/images/Generic%20Bag(1).jpg'),
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                        padding: EdgeInsets.only(
                                      left: 20.00,
                                      top: 25.00,
                                    )),
                                    new Text(
                                      "Groceries",
                                      style: new TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins'),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 27,
                                      child: FlatButton(
                                        onPressed: () {
                                          showActionSheet(context);
                                        },
                                        padding: EdgeInsets.only(
                                            left: 60.00,
                                            top: 10.00,
                                            right: 2.00),
                                        child: Image.asset(
                                            'assets/icons/menu.png'),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ));
                      })),
              new Container(
                margin: EdgeInsets.only(top: 1.00),
                alignment: Alignment.center,
                child: new Column(
                  children: <Widget>[
                    new Padding(
                        padding: EdgeInsets.only(left: 10.00, top: 1.00)),
                    new Container(
                      color: Color(0xffeeeeee),
                      padding:
                          EdgeInsets.only(left: 10.00, top: 3.00, bottom: 5.00),
                      child: new Row(
                        children: <Widget>[
                          new Padding(
                              padding:
                                  EdgeInsets.only(left: 20.00, top: 20.00)),
                          new Text(
                            "Products",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])),
          ),
        ]))),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 1),
            delegate:
                SliverChildBuilderDelegate((context, index) => new Container(
                      width: 200,
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child: Container(
                          child: Column(children: <Widget>[
                            Card(
                              elevation: 2,
                              child: Container(
                                height: 220,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: new NetworkImage(
                                        'https://localtvktvi.files.wordpress.com/2018/01/s012922158.jpg?quality=85&strip=all&w=400&h=225&crop=1'),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new Padding(
                                    padding: EdgeInsets.only(
                                  left: 30.00,
                                  top: 30.00,
                                )),
                                new Text(
                                  "Coca Cola",
                                  style: new TextStyle(
                                      fontSize: 18.0,
                                      color: Color(0xff202950),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                ),
                                cokeTag,
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                ),
                                sugarFreeTag,
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                ),
                                measurementTag
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                ),
                                quantityTag,
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                ),
                                migrosTag,
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                ),
                                typeTag
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                ),
                                new Card(
                                  elevation: 1,
                                  child: Container(
                                    child: FlatButton.icon(
                                        onPressed: null,
                                        icon: Icon(FontAwesomeIcons.edit),
                                        label: Text("Edit")))
                                ),
                                SizedBox(width: 5.0),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                ),

                                new Card(
                                  elevation: 1,
                                  child: Container(
                                      child: FlatButton.icon(
                                          onPressed: null,
                                          icon: Icon(FontAwesomeIcons.trash),
                                          label: Text("Delete"))),
                                ),
                                SizedBox(width: 5.0),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                ),
                                new Card(
                                  elevation: 1,
                                  child:
                                 Container(
                                    child: FlatButton.icon(
                                        onPressed: null,
                                        icon:
                                            Icon(FontAwesomeIcons.shoppingCart),
                                        label: Text("Add to Cart")))
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                    )))
      ],
    ));
  }
}
