import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/flash-sale.png", "text": "Flash Sale"},
      {"icon": "assets/invoices.png", "text": "Tagihan"},
      {"icon": "assets/joystick.png", "text": "Game"},
      {"icon": "assets/coupon.png", "text": "Voucher"},
      {"icon": "assets/more.png", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final String icon;
  final press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.15,
      child: Column(
        children: [
          Container(
            color: Colors.purple[100],
            child: IconButton(icon: Image.asset(icon), onPressed: press),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
