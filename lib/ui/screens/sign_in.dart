import 'dart:ui';
import 'package:chat_app/models/state.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/transitions.dart';
import 'package:chat_app/ui/screens/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_app/util/alert.dart';

class SignInScreen extends StatefulWidget {
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  SharedPreferences shard;
  bool _autoValidate = false;
  bool _loadingVisible = false;
  StateModel appState;

  @override
  void initState() {
    super.initState();
   // StateWidget.of(context).initUser();
  }




  Widget build(BuildContext context) {


    print(appState);
    if (appState != null) {
      if (appState.user.otpAuthenticated) {
        return HomeScreen();
      } else {
        return VerificationScreen();
      }
    } else {
      Future<void> _changeLoadingVisible() async {
        setState(() {
          _loadingVisible = !_loadingVisible;
        });
      }

      void _emailLogin(
          {String email, String password, BuildContext context}) async {
        if (_formKey.currentState.validate()) {
          try {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
            await _changeLoadingVisible();
            //need await so it has chance to go through error if found.
            await StateWidget.of(context).logInUser(email, password);


            await Navigator.pushNamed(context, '/MainMenu');
          } catch (e) {
            print(e);
            _changeLoadingVisible();
            String exception = e.toString();
            exception = exception;
            Alert.showError(context, "Sign In Error", exception);
          }
        } else {
          setState(() => _autoValidate = true);
        }
      }

      final logo = Container(
        height: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login/logo.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
      );

      final email = Container(
        color: Colors.white,
        child: TextFormField(
          style: new TextStyle(fontFamily: 'Poppins'),
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          controller: _email,
          validator: Validator.validateEmail,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.email,
                color: Color(0xFF2541a6),
              ), // icon is 48px widget.
            ),
            hintText: 'Email Address',
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

      final password = Container(
          color: Colors.white,
          child: TextFormField(
            style: new TextStyle(fontFamily: 'Poppins'),
            autofocus: false,
            obscureText: true,
            controller: _password,
            // validator: Validator.validatePassword,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.lock,
                  color: Color(0xFF2541a6),
                ), // icon is 48px widget.
              ),
              // icon is 48px widget.
              hintText: 'Password',
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
          ));

      final forgotLabel = FlatButton(
        child: Text(
          'Forgot Password?',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/forgot-password');
        },
      );

      final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0),
        child: RaisedButton(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {
            _emailLogin(
                email: _email.text, password: _password.text, context: context);
          },
          padding: EdgeInsets.all(12),
          color: Color(0xFF00269d),
          child: Text('LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold)),
        ),
      );

      final signUpLabel = FlatButton(
        child: new Row(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(left: 30)),
            new Text(
              'Don\'t have an accout?',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400),
            ),
            new Text(
              ' Signup Now',
              style: TextStyle(
                  color: Color(0xFF3f70fc),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(context, SlideLeftRoute(page: SignUpScreen()));
          //Navigator.pushNamed(context, '/signup');
        },
      );

      final socialLoginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {},
          padding: EdgeInsets.all(12),
          color: Color(0xFF465993),
          child: new Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(left: 60)),
              Icon(FontAwesomeIcons.facebookF, color: Colors.white),
              new Padding(padding: EdgeInsets.only(left: 5)),
              Text('LOGIN WITH FACEBOOK',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
      );

      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login/background.png"),
              fit: BoxFit.cover,
            ),
          ),
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
                          new Padding(padding: EdgeInsets.only(top: 50)),
                          logo,
                          SizedBox(height: 55.0),
                          email,
                          SizedBox(height: 24.0),
                          password,
                          SizedBox(height: 20.0),
                          forgotLabel,
                          loginButton,
                          signUpLabel,
                          socialLoginButton
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              inAsyncCall: _loadingVisible),
        ),
      );
    }
  }
}
