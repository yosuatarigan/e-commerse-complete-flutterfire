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
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Image.asset(
          image,
          height: size.height * 0.5,
          width: size.width * 0.8,
          // width: size
        ),
      ],
    );
  }
}
