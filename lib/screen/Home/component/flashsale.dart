import 'package:e_commerse_complete_flutterfire/screen/Detailproduct/detailproduct.dart';
import 'package:flutter/material.dart';

class Flashsale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {
        "image": "assets/komputer.jpg",
        "terjual": 2,
        "text": "Komputer",
        "price": 4500000
      },
      {
        "image": "assets/sepatu.jpg",
        "terjual": 15,
        "text": "Sepatu Keren",
        "price": 200000
      },
      {
        "image": "assets/tas.jpg",
        "terjual": 20,
        "text": "Tas Cantik",
        "price": 150000
      },
    ];
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Flash Sale',
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              products.length,
              (index) => Flashsalecontent(
                image: products[index]["image"],
                text: products[index]["text"],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailproduct(
                                image: products[index]["image"],
                                text: products[index]["text"],
                                price: products[index]["price"].toString(),
                                press: () {},
                              )));
                },
                terjual: products[index]['terjual'].toString(),
                price: products[index]['price'].toString(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Flashsalecontent extends StatelessWidget {
  const Flashsalecontent({
    Key key,
    @required this.image,
    @required this.terjual,
    @required this.press,
    @required this.text,
    @required this.price,
  }) : super(key: key);

  final String image, terjual, text, price;
  final press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.orange,
            child: Text('$terjual Terjual'.toString()),
          ),
          Text(
            price,
            style: TextStyle(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
