import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/auth.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';

class VerificationScreen extends StatefulWidget {
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _firstDigit = new TextEditingController();
  final TextEditingController _secondDigit = new TextEditingController();
  final TextEditingController _thirdDigit = new TextEditingController();
  final TextEditingController _fourthDigit = new TextEditingController();
  final TextEditingController _fifthDigit = new TextEditingController();
  final TextEditingController _sixthDigit = new TextEditingController();
  final TextEditingController _seventhDigit = new TextEditingController();
  final TextEditingController _eightDigit = new TextEditingController();

  bool _autoValidate = false;
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {

    final verificationImage = Image(
        image: AssetImage('assets/images/verification/verification.png'),
        height: 200);

    final verificationLabel = Container(
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Enter 8 character code',
                style: new TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          new Padding(padding: EdgeInsets.only(top: 8.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'We have sent you a 8 character code in order\n to verify your phone number ',
                style: new TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );

    final firstDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _firstDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final secondDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _secondDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final thirdDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _thirdDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final fourthDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _fourthDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final fifthDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _fifthDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final sixthDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _sixthDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final seventhDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _seventhDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final eightDigit = Container(
      height: 40.0,
      width: 35.0,
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: _eightDigit,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              const BorderSide(color: Colors.transparent, width: 0.0)),
        ),
      ),
    );

    final digitCode = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        firstDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        secondDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        thirdDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        fourthDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        fifthDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        sixthDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        seventhDigit,
        new Padding(padding: EdgeInsets.all(4.0)),
        eightDigit,
      ],
    );

    final verificationButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: RaisedButton(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/verification');
        },
        padding: EdgeInsets.all(12),
        color: Color(0xFF00269d),
        child: Text('VERIFY',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
      ),
    );

    final resendLabel = FlatButton(
      child: new Row(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(left: 30)),
          new Text(
            'Haven\'t received your code?',
            style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w400),
          ),
          new Text(
            ' Resend',
            style: TextStyle(color: Color(0xFF3f70fc), fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          ),
        ],
      ),
      onPressed: () {
      },
    );


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
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            verificationImage,
                            SizedBox(height: 20.0),
                            verificationLabel,
                            SizedBox(height: 30.0),
                            digitCode,
                            SizedBox(height: 20.0),
                            verificationButton,
                            SizedBox(height: 5.0),
                            resendLabel,
                            SizedBox(height: 50.0),
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

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }

  void _verifyOTP() {}
}
