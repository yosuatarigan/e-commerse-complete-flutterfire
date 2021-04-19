import 'package:e_commerse_complete_flutterfire/component/roundedinput.dart';
import 'package:e_commerse_complete_flutterfire/screen/CartScreen/Cartscreen.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/component/searchfield.dart';
import 'package:flutter/material.dart';

class Homeheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Searchfield(),
        IconButton(
            icon: Image.asset('assets/shopping-cart.png'),
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            })
      ],
    );
  }
}
