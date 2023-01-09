// @dart=2.9
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:weee/screens/account_profile.dart';
import 'package:weee/screens/favorites.dart';
import 'package:weee/screens/home_screen.dart';
import 'package:weee/screens/info_display_screen.dart';
import 'package:weee/screens/login_screen.dart';
import 'package:weee/screens/map_screen.dart';
import 'package:weee/screens/my_inbox.dart';
import 'package:weee/screens/my_orders.dart';
import 'package:weee/screens/rating_screen.dart';
import 'package:weee/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        hintColor: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/second': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/map_screen': (context) => MapsScreen(),
        '/info_display': (context) => InfoDisplayScreen(),
        '/rating': (context) => RatingScreen(),
        '/account_profile': (context) => AccountProfile(),
        '/favorites': (context) => MyFavorites(),
        '/inbox': (context) => MyInbox(),
        '/my_orders': (context) => MyOrders(),
      },
    );
  }
}
