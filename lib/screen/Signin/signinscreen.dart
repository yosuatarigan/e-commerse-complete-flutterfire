import 'package:flutter/material.dart';
import '../Signin/component/body.dart';

class SigninScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
