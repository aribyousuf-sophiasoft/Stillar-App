import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/transitions.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final Widget placeholder = Container(color: Colors.grey);

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.network(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

class ProductScreen extends StatefulWidget {
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _current = 0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _firstName = new TextEditingController();

  bool _autoValidate = false;
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        height: 500,
        items: child,
        viewportFraction: 1.0,
        aspectRatio: 2.0,
        autoPlay: false,
        enlargeCenterPage: false,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
    ]);
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
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
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
