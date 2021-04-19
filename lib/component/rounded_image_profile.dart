import 'package:flutter/material.dart';

class RoudedImageProfile extends StatelessWidget {
  final String urlimage;
  RoudedImageProfile(this.urlimage);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
      width: size.width * 0.2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child:  Image.asset(
          urlimage,
          fit: BoxFit.cover,
          height: size.height * 0.1,
          width: size.width * 0.2,
        ),
      ),
    );
  }
}
