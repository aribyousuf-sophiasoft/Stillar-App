import 'package:chat_app/ui/screens/ActiveOrderDetails.dart';
import 'package:chat_app/ui/screens/Cart.dart';
import 'package:chat_app/ui/screens/ChangePassword.dart';
import 'package:chat_app/ui/screens/CheckOutConfirmation.dart';
import 'package:chat_app/ui/screens/CheckOutShipping.dart';
import 'package:chat_app/ui/screens/EditProfile.dart';
import 'package:chat_app/ui/screens/Help.dart';
import 'package:chat_app/ui/screens/Notifications.dart';
import 'package:chat_app/ui/screens/OrderHistory.dart';
import 'package:chat_app/ui/screens/PrivacyPolicy.dart';
import 'package:chat_app/ui/screens/Rating.dart';
import 'package:chat_app/ui/screens/ShippingAddress.dart';
import 'package:chat_app/ui/screens/Terms.dart';
import 'package:chat_app/ui/screens/ThanksScreen.dart';
import 'package:chat_app/ui/screens/TrackOrder-GoingStore.dart';
import 'package:chat_app/ui/screens/TrackOrder-OrderAssigned.dart';
import 'package:chat_app/ui/screens/TrackOrder-OrderPlaced.dart';
import 'package:chat_app/ui/screens/TrackOrder-PaymentSubmitted.dart';
import 'package:chat_app/ui/screens/TrackOrder-Purchasing.dart';
import 'package:chat_app/ui/screens/TrackOrder-PurchasingCompleted.dart';
import 'package:chat_app/ui/screens/TrackOrder-RiderArrived.dart';
import 'package:chat_app/ui/screens/TrackOrder-onTheWay.dart';
import 'package:chat_app/ui/screens/UserlistDetails.dart';
import 'package:chat_app/ui/screens/product_details.dart';
import 'package:chat_app/ui/screens/userLists.dart';
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
import 'package:chat_app/ui/screens/Profile.dart';

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
        '/': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/verification': (context) => VerificationScreen(),
        '/productdetails': (context) => ProductDetailScreen(),
        '/userList': (context) => userListScreen(),
        '/profile': (context) => Profile(),
        '/ShippingAddress': (context) => shippingAddressScreen(),
        '/OrderHistory': (context) => OrderHistory(),
        '/ChangePassword': (context) => ChangePassword(),
        '/Help': (context) => Help(),
        '/PrivacyPolicy': (context) => privacyPolicy(),
        '/Terms': (context) => terms(),
        '/EditProfile': (context) => editProfile(),
        '/Cart': (context) => Cart(),
        '/CheckoutShipping': (context) => CheckOutShipping(),
        '/UserListDetails': (context) => userListDetails(),
        '/Notifcations': (context) => Notifications(),
        '/CheckOutConfirmation': (context) => CheckOutConfirmation(),
        '/ThanksScreen': (context) => ThanksScreen(),
        '/ActiveOrderDetails': (context) => ActiveOrderDetails(),
        '/TrackOrder-OrderPlaced': (context) => TrackOrderOrderPlaced(),
        '/TrackOrder-OrderAssigned': (context) => TrackOrderOrderAssigned(),
        '/TrackOrder-GoingStore': (context) => TrackOrderGoingStore(),
        '/TrackOrder-Purchasing': (context) => TrackOrderPurchasing(),
        '/TrackOrder-PurchasingCompleted': (context) => TrackOrderPurchasingCompleted(),
        '/TrackOrder-onTheWay': (context) => TrackOrderonTheWay(),
        '/TrackOrder-RiderArrived': (context) => TrackOrderRiderArrived(),
        '/TrackOrder-PaymentSubmitted': (context) => TrackOrderPaymentSubmitted(),
        '/Rating': (context) => Rating(),
      },
    );
  }
}



