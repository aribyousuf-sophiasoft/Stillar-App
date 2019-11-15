import 'package:chat_app/util/state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_app/util/auth.dart';
import 'package:chat_app/util/validator.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/alert.dart';

class editProfile extends StatefulWidget {
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = new TextEditingController();
  final TextEditingController _lastName = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _mobileNumber = new TextEditingController();

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


    final updateButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: RaisedButton(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Color(0xFF00269d),
        child: Text('Update',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
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
              "Edit Profile",
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
            padding:EdgeInsets.only(top:50.00),
            color: Colors.transparent,
            child: LoadingScreen(
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
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
                            updateButton

                          ],
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


}
