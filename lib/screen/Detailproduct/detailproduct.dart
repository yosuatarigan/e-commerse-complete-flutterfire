import 'package:flutter/material.dart';

class Detailproduct extends StatelessWidget {
  const Detailproduct({
    Key key,
    @required this.image,
    @required this.text,
    @required this.press,
    @required this.price,
  }) : super(key: key);

  final String text, price;
  final String image;
  final press;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            image,
            width: 400,
            height: 400,
          ),
          Text(text),
          Text('Rp $price'),
          ElevatedButton(onPressed: press, child: Text('Add To Cart'))
        ],
      ),
    );
  }
}
