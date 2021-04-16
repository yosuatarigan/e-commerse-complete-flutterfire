import 'package:flutter/material.dart';

class RoundedInputpassword extends StatelessWidget {
  const RoundedInputpassword({Key key, this.controllernya}) : super(key: key);

  final controllernya;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: TextField(
        controller: controllernya,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            hintText: 'password'),
      ),
    );
  }
}
