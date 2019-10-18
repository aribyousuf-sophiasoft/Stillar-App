import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/auth.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/transitions.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:chat_app/ui/screens/product.dart';

class ProductDetailScreen extends StatefulWidget {
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _firstName = new TextEditingController();

  bool _autoValidate = false;
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    
    final productName = Container(
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        textCapitalization: TextCapitalization.words,
        controller: _firstName,
        validator: Validator.validateName,
        decoration: InputDecoration(
          hintText: 'Product Name',
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
    
    final nextButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: RaisedButton(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {
          Navigator.push(context, SlideLeftRoute(page: ProductScreen()));
        },
        padding: EdgeInsets.all(12),
        color: Color(0xFF00269d),
        child: Text('NEXT',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
      ),
    );

    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    return Stack(
      children: <Widget>[
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
              "Product Details",
              style: new TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins'),
            ),
            backgroundColor: Colors.transparent,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: new Container(
            color: Colors.transparent,
            child: LoadingScreen(
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            productName,
                            SizedBox(height: 24.0),
                            GridView.count(
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                              scrollDirection: Axis.vertical,
                              crossAxisCount: 2,
                              childAspectRatio: (itemWidth / itemHeight),
                              controller:
                                  new ScrollController(keepScrollOffset: false),
                              shrinkWrap: true,
                              children: <Widget>[
                                productImageItem(
                                    "Add Front Image",
                                    new Image(
                                      height: 120,
                                      width: 100,
                                      image: new AssetImage(
                                          "assets/images/products/product-icon-front.png"),
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                    () {},
                                    Colors.grey),
                                productImageItem(
                                    "Add Back Image",
                                    new Image(
                                      height: 120,
                                      width: 100,
                                      image: new AssetImage(
                                          "assets/images/products/product-icon-back.png"),
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                        () {},
                                    Colors.grey),
                                productImageItem(
                                    "Add Left Image",
                                    new Image(
                                      height: 120,
                                      width: 100,
                                      image: new AssetImage(
                                          "assets/images/products/product-icon-left.png"),
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                        () {},
                                    Colors.grey),
                                productImageItem(
                                    "Add Right Image",
                                    new Image(
                                      height: 120,
                                      width: 100,
                                      image: new AssetImage(
                                          "assets/images/products/product-icon-right.png"),
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                        () {},
                                    Colors.grey),
                              ],
                            ),
                            nextButton,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                inAsyncCall: _loadingVisible),
          ),
        ),
      ],
    );
  }

  Card productImageItem(
      String title, Image image, GestureTapCallback onTap, Color color) {
    return Card(
      elevation: 0,
        margin: new EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: new Material(
            color: Colors.white,
            child: new InkWell(
              onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  new Container(
                      margin: EdgeInsets.only(left: 10.0),
                      alignment: Alignment.center,
                      child: image),
                  SizedBox(height: 5.0),
                  new Container(
                    alignment: Alignment.center,
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                            padding:
                                EdgeInsets.only(top: 10.0)),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              title,
                              style: new TextStyle(
                                  fontSize: 11.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
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
          ),
        ));
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }

  void _addProductImage() {}
}
