import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Alert {

  static void showError(BuildContext context, String exceptionTitle, String exceptionMessage) {
    Flushbar(
      shouldIconPulse: false,
      padding: EdgeInsets.fromLTRB(40, 16, 16, 16),
      icon: Icon(
        Icons.info_outline,
        size: 40.0,
        color: Colors.red,
      ),
      backgroundColor: Colors.white,
      titleText: Text(
        exceptionTitle,
        style: new TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
      messageText: Text(
        exceptionMessage,
        style: new TextStyle(
            color: Colors.black, fontFamily: 'Poppins', fontSize: 14),
      ),
      duration: Duration(seconds: 5),
    )..show(context);
  }

  static void showSuccess(BuildContext context, String title, String message) {
    Flushbar(
      shouldIconPulse: false,
      padding: EdgeInsets.fromLTRB(40, 16, 16, 16),
      icon: Icon(
        Icons.check,
        size: 40.0,
        color: Colors.green,
      ),
      backgroundColor: Colors.white,
      titleText: Text(
        title,
        style: new TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
      messageText: Text(
        message,
        style: new TextStyle(
            color: Colors.black, fontFamily: 'Poppins', fontSize: 14),
      ),
      duration: Duration(seconds: 5),
    )..show(context);
  }

}