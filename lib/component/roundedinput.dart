import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({Key key, this.controllernya, this.hinttext})
      : super(key: key);

  final controllernya;
  final hinttext;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: TextField(
        controller: controllernya,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            hintText: hinttext),
      ),
    );
  }
}
