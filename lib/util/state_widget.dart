import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/state.dart';
import 'package:chat_app/models/user.dart';
import 'package:chat_app/models/settings.dart';
import 'package:chat_app/util/auth.dart';

class StateWidget extends StatefulWidget {
  final StateModel state;
  final Widget child;

  StateWidget({
    @required this.child,
    this.state,
  });

  // Returns data of the nearest widget _StateDataWidget
  // in the widget tree.
  static _StateWidgetState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_StateDataWidget)
            as _StateDataWidget)
        .data;
  }

  @override
  _StateWidgetState createState() => new _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  StateModel state;

  //GoogleSignInAccount googleAccount;
  //final GoogleSignIn googleSignIn = new GoogleSignIn();

  @override
  void initState() {
    super.initState();
    if (widget.state != null) {
      state = widget.state;
    } else {
      state = new StateModel(isLoading: true);
      initUser();
    }
  }

  Future<Null> initUser() async {
    Result user = await Auth.getUserLocal();
    Settings settings = await Auth.getSettingsLocal();
    String token = await Auth.getTokenLocal();
    String userId = await Auth.getCookieLocal();
    String otpAuthenticated = await Auth.getOtpAuthenticatedLocal();
    List<listResult> userList= await Auth.getUserListLocal();

    setState(() {
      state.isLoading = false;
      state.token = token;
      state.user = user;
      state.settings = settings;
      state.userId = userId;
      state.userList=userList;
    });
  }

  Future<void> logOutUser() async {
    await Auth.signOut();
    setState(() {
      state.user = null;
      state.settings = null;
      state.token = null;
      state.userId = null;
      state.userList=null;
    });
  }

  Future<void> logInUser(email, password) async {
    //print("logInUser() called");
    List<String> keys = await Auth.signIn(email, password);
    GetCustomerProfileResult user = await Auth.getUser(keys[0], keys[1]);
    try {
      GetAllListsResult userList = await Auth.getCustomerLists(
          keys[0], keys[1]);
      await Auth.storeUserListLocal(userList.result);
    }
    catch(e)
    {

    }


    if (keys.isNotEmpty && user != null) {
      await Auth.storeTokenLocal(keys[0]);
      await Auth.storeCookieLocal(keys[1]);
      await Auth.storeUserLocal(user.result);


      await initUser();

    }



  }

  @override
  Widget build(BuildContext context) {
    return new _StateDataWidget(
      data: this,
      child: widget.child,
    );
  }
}

class _StateDataWidget extends InheritedWidget {
  final _StateWidgetState data;

  _StateDataWidget({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  // Rebuild the widgets that inherit from this widget
  // on every rebuild of _StateDataWidget:
  @override
  bool updateShouldNotify(_StateDataWidget old) => true;
}
