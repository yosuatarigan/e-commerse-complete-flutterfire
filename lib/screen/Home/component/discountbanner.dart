import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "Diskon Hari Raya\n"),
            TextSpan(
              text: "Cashback 25%",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
