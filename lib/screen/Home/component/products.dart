import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {"image": "assets/jas.jpg", "text": "Jas", "price": 200000},
      {"image": "assets/kaus.jpg", "text": "Kaos Bagus", "price": 25000},
      {"image": "assets/sepeda.jpg", "text": "Sepeda", "price": 1200000},
      {"image": "assets/sepatu2.jpg", "text": "Sepatu", "price": 220000},
    ];
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Products',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Wrap(
            runSpacing: 20,
            runAlignment: WrapAlignment.start,
            spacing: 20,
            children: List.generate(
              products.length,
              (index) => Productcontent(
                image: products[index]["image"],
                text: products[index]["text"],
                press: () {},
                price: products[index]['price'].toString(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Productcontent extends StatelessWidget {
  const Productcontent({
    Key key,
    @required this.image,
    @required this.press,
    @required this.text,
    @required this.price,
  }) : super(key: key);

  final String image, text, price;
  final press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
        Text(
          'RP : $price',
          style: TextStyle(color: Colors.orange),
        )
      ],
    );
  }
}
