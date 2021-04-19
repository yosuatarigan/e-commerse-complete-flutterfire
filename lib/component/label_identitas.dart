import 'package:flutter/material.dart';


class LabelIdentitas extends StatelessWidget {
  final String datayginginditanya;
  final String dataygdijawab;

  LabelIdentitas(this.datayginginditanya, this.dataygdijawab);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left : 10),
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(datayginginditanya),
              width: size.width * 0.3,
            ),
            Text(':  '),
            Text(dataygdijawab),
          ],
        ),
      
    );
  }
}
