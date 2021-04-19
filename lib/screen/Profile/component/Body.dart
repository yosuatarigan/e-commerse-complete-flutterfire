import 'package:e_commerse_complete_flutterfire/component/rounded_image_profile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: size.width * 0.2,
                  child: RoudedImageProfile('assets/profile.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jostar Programming'),
                    Text('joxx@gmail.com')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Logout')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
