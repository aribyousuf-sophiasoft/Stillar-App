import 'package:chat_app/ui/screens/userLists.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/state.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/ui/screens/product_details.dart';
import 'package:chat_app/ui/widgets/loading.dart';
import 'package:chat_app/util/alert.dart';
import 'package:chat_app/util/auth.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StateModel appState;
  bool _autoValidate = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _loadingVisible = false;
  final TextEditingController _listName = new TextEditingController();

  @override
  void initState() {


    super.initState();

  }




  showAlertDialog(BuildContext context) {


    void _createList(
        {String listName,BuildContext context}) async {
        try {

          String token = await Auth.getTokenLocal();
          String userId = await Auth.getCookieLocal();
          List<String> keys = await Auth.createList(listName, token, userId);
          await Navigator.pushNamed(context, '/productdetails');
        } catch (e) {
          print(e);

          String exception = e.toString();
          exception = exception.split(': ')[1];
          Alert.showError(context, "Error", exception);
        }

    }
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "Cancel",
        style: new TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
        ),
      ),
      onPressed: () {
        Navigator.pop(context, false);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "Done",
        style: new TextStyle(
          color: Color(0xFF4cb39e),
          fontFamily: 'Poppins',
        ),
      ),
      onPressed: () {
        _createList(listName:_listName.text,context: context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "List Name",
        style: new TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      content: Container(
        color: Colors.white,
        child: TextField(
          style: new TextStyle(fontFamily: 'Poppins'),
          keyboardType: TextInputType.text,
          autofocus: false,
          controller: _listName,

          decoration: InputDecoration(
            hintText: 'Enter your list name',
            hintStyle: new TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'Poppins',
            ),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0.0)),
          ),
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }



  static Future<void> TestPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

   print(prefs.get("user"));


  }
  Widget build(BuildContext context) {

    appState = StateWidget.of(context).state;
    //print(appState.user.EmailAddress);
    if (!appState.isLoading && (appState.user == null)) {
      return SignInScreen();
    } else if (!appState.user.otpAuthenticated && (appState.user != null)) {
      return VerificationScreen();
    }
    else if (appState.userList!=null && (appState.user!=null))
      {
        return userListScreen();
      }


    else {

      print(appState.user.firstName);
      if (appState.isLoading) {
        _loadingVisible = true;
      } else {
        _loadingVisible = false;
      }




      Future<bool> _onBackPressed() {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Are you sure?'),
                content: Text('You are going to exit the application!!'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('NO'),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                  FlatButton(
                    child: Text('YES'),
                    onPressed: () {
                      TestPref();
                      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    },
                  ),
                ],
              );
            });
      }



      final signOutButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            StateWidget.of(context).logOutUser();
          },
          padding: EdgeInsets.all(12),
          color: Theme.of(context).primaryColor,
          child: Text('SIGN OUT', style: TextStyle(color: Colors.white)),
        ),
      );

      final token = appState?.token ?? '';
      final userId = appState?.userId ?? '';
      //final settingsId = appState?.settings?.settingsId ?? '';
      final firstName = appState?.user?.firstName ?? '';
      final lastName = appState?.user?.lastName ?? '';

      final tokenLabel = Text('Token: ');

      final userIdLabel = Text('UserID: ');
      //final emailLabel = Text('Email: ');

      final firstNameLabel = Text('First Name: ');
      final lastNameLabel = Text('Last Name: ');
      //final settingsIdLabel = Text('SettingsId: ');

      final cartImage =
          Image(image: AssetImage('assets/images/home/empty.png'), height: 200);

      final cartLabel = Container(
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'Create List For Shopping',
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
                  'Sed imperdiet magna id ex venenatis',
                  style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 5.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'eu sollicitudin nisi efficitur',
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

      final createListButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 17.0),
        child: RaisedButton(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {
            showAlertDialog(context);
          },
          padding: EdgeInsets.all(12),
          color: Color(0xFF00269d),
          child: Text('CREATE LIST',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold)),
        ),
      );

      final addProductLabel = FlatButton(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'ADD PRODUCT',
              style: TextStyle(
                  color: Color(0xFF00259e),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onPressed: () {},
      );

      return Scaffold(
        backgroundColor: Color(0xFFf8f9fb),
        body: LoadingScreen(
          child:
          WillPopScope(
            onWillPop: _onBackPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      cartImage,
                      SizedBox(height: 35.0),
                      cartLabel,
                      SizedBox(height: 15.0),
                      createListButton,
                      SizedBox(height: 15.0),
                      addProductLabel,
                    ],
                  ),
                ),
              ),
            ),
          ),
            inAsyncCall: _loadingVisible),

      );
    }
  }
}
