import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/auth.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/alert.dart';

class SignUpScreen extends StatefulWidget {
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = new TextEditingController();
  final TextEditingController _lastName = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _mobileNumber = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  final TextEditingController _confirmPassword = new TextEditingController();

  bool _autoValidate = false;
  bool _loadingVisible = false;
  bool _acceptTermsNCondition = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {

    final firstName = Container(
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        textCapitalization: TextCapitalization.words,
        controller: _firstName,
        validator: Validator.validateName,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(
              Icons.person,
              color: Color(0xFF2541a6),
            ), // icon is 48px widget.
          ),
          hintText: 'First Name',
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

    final lastName = Container(
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        autofocus: false,
        textCapitalization: TextCapitalization.words,
        controller: _lastName,
        validator: Validator.validateName,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(
              Icons.person,
              color: Color(0xFF2541a6),
            ), // icon is 48px widget.
          ),
          hintText: 'Last Name',
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

    final mobileNumber = Container(
      color: Colors.white,
      child: TextFormField(
        style: new TextStyle(fontFamily: 'Poppins'),
        keyboardType: TextInputType.phone,
        autofocus: false,
        controller: _mobileNumber,
        validator: Validator.validateNumber,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(
              Icons.phone,
              color: Color(0xFF2541a6),
            ), // icon is 48px widget.
          ),
          hintText: 'Mobile Number',
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
          validator: Validator.validatePassword,
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

    final confirmPassword = Container(
        color: Colors.white,
        child: TextFormField(
          style: new TextStyle(fontFamily: 'Poppins'),
          autofocus: false,
          obscureText: true,
          controller: _confirmPassword,
          validator: (value) {
            if (value != _password.text) {
              return 'Password Does not match';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.lock,
                color: Color(0xFF2541a6),
              ), // icon is 48px widget.
            ),
            // icon is 48px widget.
            hintText: 'Confirm Password',
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

    final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: RaisedButton(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {
          _emailSignUp(
              firstName: _firstName.text,
              lastName: _lastName.text,
              email: _email.text,
              mobileNumber: _mobileNumber.text,
              password: _password.text,
              context: context);
        },
        padding: EdgeInsets.all(12),
        color: Color(0xFF00269d),
        child: Text('SIGNUP',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
      ),
    );

    final signUpLabel = Container(
      child: new Row(
        children: <Widget>[
          new Checkbox(
            value: _acceptTermsNCondition,
            checkColor: Colors.green,
            activeColor: Colors.white,
            onChanged: (bool value) {
              setState(() {
                _acceptTermsNCondition = value;
              });
            },
          ),
          new Text(
            'I agree to the ',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
          new Text(
            'Terms and Conditions',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
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
            title: Text(
              "Signup",
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
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            firstName,
                            SizedBox(height: 24.0),
                            lastName,
                            SizedBox(height: 24.0),
                            email,
                            SizedBox(height: 24.0),
                            mobileNumber,
                            SizedBox(height: 24.0),
                            password,
                            SizedBox(height: 24.0),
                            confirmPassword,
                            SizedBox(height: 12.0),
                            signUpLabel,
                            signUpButton,
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

  void _emailSignUp(
      {String firstName,
      String lastName,
      String email,
      String mobileNumber,
      String password,
      BuildContext context}) async {
    if (_formKey.currentState.validate()) {
      try {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        await _changeLoadingVisible();
        List<String> keys = await Auth.signUp(
            firstName, lastName, email, mobileNumber, password);
        if (keys[0] != '200' && keys[0] != '201') {
          _changeLoadingVisible();
          Alert.showError(context, "Sign Up Error", keys[1]);
        } else {
          // _changeLoadingVisible();
          await StateWidget.of(context).logInUser(email, "test");
          await Navigator.pushNamed(context, '/verification');
        }
      } catch (e) {
        _changeLoadingVisible();
        print("Sign In Error: $e");
        Alert.showError(context, "Sign Up Error", "Something Went Wrong");
      }
    } else {
      setState(() => _autoValidate = true);
    }
  }
}
