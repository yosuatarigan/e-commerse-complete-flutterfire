import 'package:e_commerse_complete_flutterfire/screen/Home/HomeScree.dart';
import 'package:e_commerse_complete_flutterfire/screen/Signin/signinscreen.dart';
import 'package:e_commerse_complete_flutterfire/screen/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
      routes: {
        SigninScreen.routeName: (ctx) => SigninScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
