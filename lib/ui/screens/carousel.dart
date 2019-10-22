import 'package:carousel_pro/carousel_pro.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool _loadingVisible = false;

    bool _autoValidate = false;

    Widget carousel = new Carousel(
      autoplay: false,
      dotSize: 4,
      dotSpacing: 10,
      boxFit: BoxFit.cover,
      images: [
        new NetworkImage(
            'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80'),
        new NetworkImage(
            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
        new NetworkImage(
            'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'),
        new NetworkImage(
            'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget appBar = new AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );

    final addToList = Container(
        color: Colors.white,
        child: SizedBox(
            child: RaisedButton(
          disabledColor: Colors.transparent,
          color: Colors.transparent,
          elevation: 4.0,
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Text("Add to Lists",
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                  )),
              new Padding(padding: EdgeInsets.only(left: 240.0)),
              Icon(FontAwesomeIcons.chevronDown, color: Color(0xFF00269d)),
            ],
          ),
        )));

    final addTags = Container(
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.green,
            ), // icon is 48px widget.
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
              FontAwesomeIcons.plus,
              size: 18,
              color: Color(0xFF00269d),
            ), // icon is 48px widget.
          ),
          hintText: 'Add Tag',
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
      ),
    );

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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
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
          child: Row(
            children: <Widget>[
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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
            ],
          ),
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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
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
              new Padding(padding: EdgeInsets.only(left: 5.0)),
              Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 11,
              ),
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

    final addInfoButton = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Image(
                  height: 35,
                  image: new AssetImage('assets/images/products/add.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Add more info',
                  style: TextStyle(
                      color: Color(0xFF949cba),
                      fontFamily: 'Poppins',
                      fontSize: 12))
            ],
          )
        ],
      ),
    );

    final addAnotherProductButton = Container(
        width: MediaQuery.of(context).size.width / 2,
        child: RaisedButton(
          onPressed: () {},
          padding: EdgeInsets.all(12),
          color: Colors.white,
          child: Text('ADD ANOTHER',
              style: TextStyle(
                  color: Color(0xFF00269d),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold)),
        ));

    final addProductButton = Container(
        width: MediaQuery.of(context).size.width / 2,
        child: RaisedButton(
          onPressed: () {},
          padding: EdgeInsets.all(12),
          color: Color(0xFF00269d),
          child: Text('ADD PRODUCT',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold)),
        ));

    return Stack(children: <Widget>[
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
          body: new Container(
              color: Colors.transparent,
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 350,
                        child: carousel,
                      ),
                      Container(
                        height: 100,
                        child: appBar,
                      ),
                    ],
                  ),
                  LoadingScreen(
                      child: Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                        child: Column(children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 20)),
                                  addToList,
                                  SizedBox(height: 20.0),
                                  addTags,
                                  SizedBox(height: 20.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      cokeTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      sugarFreeTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      measurementTag
                                    ],
                                  ),
                                  SizedBox(height: 15.0),
                                  Row(
                                    children: <Widget>[
                                      quantityTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      migrosTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      typeTag
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  suggestedTagsLabel,
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: <Widget>[
                                      quantityTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      migrosTag,
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                      typeTag
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  addInfoButton,
                                  SizedBox(height: 30.0),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    addAnotherProductButton,
                                    addProductButton
                                  ],
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      inAsyncCall: _loadingVisible),
                ],
              ))))
    ]);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}
