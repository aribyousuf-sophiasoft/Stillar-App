import 'dart:async';

//import 'dart:convert';
import 'package:chat_app/models/user.dart';
import 'package:chat_app/models/settings.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_app/util/StillarAuth.dart';

enum authProblems { UserNotFound, PasswordNotValid, NetworkError, UnknownError }

class Auth {

  static Future<List<String>> signIn(String email, String password) async {
    CustomerLoginResult customerLoginResult =
        await StillarAuth.signInWithEmailAndPassword(email, password);
    var keys = new List<String>(2);
    keys[0] = customerLoginResult.token;
    keys[1] = customerLoginResult.userID;
    return keys;
  }


  static Future<List<String>> signUp(String firstName, String lastName,String email,String mobileNumber, String password) async {
    var keys = new List<String>(2);
    try {
      CustomerSignUpResult customerSignUpResult =
      await StillarAuth.signUp(
          firstName, lastName, email, mobileNumber, password);

      keys[0] = customerSignUpResult.statusCode;
      keys[1] = customerSignUpResult.message;

    }

    catch(e)
    {
      throw ("Some thing went wrong");
    }
    return keys;
  }



  static Future<List<String>> verifyOTP(String email,String otp,String token) async {
    var keys = new List<String>(2);
    try {

      await StillarAuth.verifyOTP(email,otp,token);
    }

    catch(e)
    {
      throw Exception(e);
    }
    return keys;
  }

  static Future<GetCustomerProfileResult> getUser(String token, String userId) async {
    if (token != null && userId != null) {
      return await StillarAuth.getUserProfile(token, userId);
    } else {
      print('token/user id can not be null');
      return null;
    }
  }

  static Future<void> storeTokenLocal(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<void> storeOtpAuthenticatedLocal(String otpAuthenticated) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('otpAuthenticated', otpAuthenticated);
  }
  static Future<void> storeCookieLocal(String userID) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userID', userID);
  }

  static Future<void> storeUserLocal(Result loginResult) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String storeUser = resultToJson(loginResult);
    await prefs.setString('user', storeUser);
  }

  static Future<String> storeSettingsLocal(Settings settings) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String storeSettings = settingsToJson(settings);
    await prefs.setString('settings', storeSettings);
    return settings.settingsId;
  }

  static Future<Result> getUserLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('user') != null) {
      Result user = result(prefs.getString('user'));
      return user;
    } else {
      return null;
    }
  }


  static Future<String> getOtpAuthenticatedLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('otpAuthenticated') != null) {
      String token = prefs.getString('otpAuthenticated');
      return token;
    } else {
      return null;
    }
  }

  static Future<String> getTokenLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      String token = prefs.getString('token');
      return token;
    } else {
      return null;
    }
  }

  static Future<String> getCookieLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('userID') != null) {
      String userID = prefs.getString('userID');
      return userID;
    } else {
      return null;
    }
  }

  static Future<Settings> getSettingsLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('settings') != null) {
      Settings settings = settingsFromJson(prefs.getString('settings'));
      //print('SETTINGS: $settings');
      return settings;
    } else {
      return null;
    }
  }

  static Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static String getExceptionText(Exception e) {
    if (e is PlatformException) {
      switch (e.message) {
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          return 'User with this email address not found.';
          break;
        case 'The password is invalid or the user does not have a password.':
          return 'Invalid password.';
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          return 'No internet connection.';
          break;
        case 'The email address is already in use by another account.':
          return 'This email address already has an account.';
          break;
        case 'Authorization Failed':
          return 'Authorization Failed.';
          break;
        default:
          return 'Unknown error occured.';
      }
    } else {
      return 'Unknown error occured.';
    }
  }
}
