import 'package:chat_app/ui/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/util/state_widget.dart';
import 'package:chat_app/ui/theme.dart';
import 'package:chat_app/ui/screens/MainMenu.dart';
import 'package:chat_app/ui/screens/home.dart';
import 'package:chat_app/ui/screens/sign_in.dart';
import 'package:chat_app/ui/screens/sign_up.dart';
import 'package:chat_app/ui/screens/forgot_password.dart';
import 'package:chat_app/ui/screens/verification.dart';
import 'package:chat_app/ui/screens/carousel.dart';

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
        '/Home': (context) => HomeScreen(),
        '/MainMenu': (context) => Menu(),
        '/': (context) => ImageCarousel(), //SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/verification': (context) => VerificationScreen(),
        '/productdetails': (context) => ProductDetailScreen(),
      },
    );
  }
}
