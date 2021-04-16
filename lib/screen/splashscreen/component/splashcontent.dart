import 'package:e_commerse_complete_flutterfire/screen/Signin/signinscreen.dart';
import 'package:flutter/material.dart';

class Splashcontent extends StatelessWidget {
  const Splashcontent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Spacer(
          flex: 2,
        ),
        Text(
          "SHOP AMAZING",
          style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
        Image.asset(
          image,
          height: size.height * 0.5,
          width: size.width * 0.8,
          // width: size
        ),
        Spacer(flex: 1),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SigninScreen.routeName);
          },
          child: Text('Continue'),
        ),
        Spacer(),
      ],
    );
  }
}
