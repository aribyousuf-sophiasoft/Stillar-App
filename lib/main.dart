import 'package:flutter/material.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/ui/theme.dart';
import 'package:chat_app/ui/screens/MainMenu.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/ui/screens/sign_up.dart';
import 'package:chat_app/ui/screens/forgot_password.dart';


void main() {
  StateWidget stateWidget = new StateWidget(
    child: new MyApp(),
  );
  runApp(stateWidget);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildTheme(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/MainMenu': (context) => Menu(),
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
      },
    );
  }
}
