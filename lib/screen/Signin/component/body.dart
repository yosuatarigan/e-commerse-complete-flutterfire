import 'package:e_commerse_complete_flutterfire/component/roundedinput.dart';
import 'package:e_commerse_complete_flutterfire/component/roundedinputpassword.dart';
import 'package:e_commerse_complete_flutterfire/screen/Home/HomeScree.dart';
import 'package:e_commerse_complete_flutterfire/screen/Signup/SignupScreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Center(
          child: Image.asset('assets/logo.png'),
        ),
        RoundedInput(
          controllernya: _emailcontroller,
          hinttext: 'Email',
        ),
        SizedBox(
          height: 20,
        ),
        RoundedInputpassword(
          controllernya: _passwordcontroller,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
          child: Text('Login'),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              'Social Media Login',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Image.asset('assets/logogoogle.png'),
                    onPressed: () {}),
                IconButton(
                    icon: Image.asset('assets/logofacebook.png'),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            TextButton(
              child: Text('Don\'t have account? Signup'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen()));
              },
            ),
          ],
        )
      ],
    );
  }
}
