// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/constants.dart';
import 'package:golane_demo_app/models/registration_widgets.dart';
import 'package:golane_demo_app/views/login.dart';
import 'package:golane_demo_app/views/register.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
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
                Input_Text('Name', false),
                SizedBox(height: 10.0),
                Input_Text('Email', false),
                SizedBox(height: 10.0),
                Input_Text('Password', true),
                SizedBox(height: 10.0),
                Input_Text('Confirm password', true),
                SizedBox(height: 50.0),
                Signup_Elevated_Button('Signup', () {}, kSignUpButtonColor),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Text(
                    'Have an account? Login',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Signup_Elevated_Button(
                    'Continue with Google', () {}, kGoogleSignUpButtonColor),
                SizedBox(height: 20.0),
                Signup_Elevated_Button(
                    'Continue with Facebook', () {}, kFbSignUpButtonColor),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
