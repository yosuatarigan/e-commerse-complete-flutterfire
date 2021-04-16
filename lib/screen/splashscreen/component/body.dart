import 'package:e_commerse_complete_flutterfire/screen/splashscreen/component/splashcontent.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Splashcontent(
              image: 'assets/shop.png',
              text: 'Dapatkan Produk Impian Anda Hanya di Toko ini',
            ))
          ],
        ),
      ),
    );
  }
}
