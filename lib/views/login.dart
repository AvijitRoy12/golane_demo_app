import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/navigationBar_components.dart';
import 'package:golane_demo_app/models/registration_widgets.dart';
import 'package:golane_demo_app/models/constants.dart';
import 'package:golane_demo_app/views/user_profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D156C)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Input_Text('Email', false),
                SizedBox(height: 10.0),
                Input_Text('Password', true),
                SizedBox(height: 50.0),
                Signup_Elevated_Button('Login', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }, kSignUpButtonColor),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
