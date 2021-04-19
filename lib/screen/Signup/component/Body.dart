import 'package:e_commerse_complete_flutterfire/component/roundedinput.dart';
import 'package:e_commerse_complete_flutterfire/component/roundedinputpassword.dart';
import 'package:e_commerse_complete_flutterfire/screen/Signin/signinscreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _namecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Center(
        child: Image.asset('assets/logo.png'),
      ),
      RoundedInput(
        controllernya: _namecontroller,
        hinttext: 'Name',
      ),
      SizedBox(
        height: 20,
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
        onPressed: () {},
        child: Text('Signup'),
      ),
      SizedBox(
        height: 20,
      ),
      Column(
        children: [
          Text(
            'Social Media Signup',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Image.asset('assets/logogoogle.png'), onPressed: () {}),
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
            child: Text('Already have an acount?'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )
    ]);
  }
}
