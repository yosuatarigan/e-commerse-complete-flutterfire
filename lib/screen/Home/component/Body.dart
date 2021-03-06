import 'package:e_commerse_complete_flutterfire/screen/Home/component/category.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/component/discountbanner.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/component/flashsale.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/component/homeheader.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/component/products.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Homeheader(),
          DiscountBanner(),
          Category(),
          Flashsale(),
          Products(),
        ],
      ),
    );
  }
}
