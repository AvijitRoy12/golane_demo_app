// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class Universal_Acc_Button extends StatelessWidget {
  Universal_Acc_Button(@required this.onPressed, this.text, this.color);

  final VoidCallback onPressed;
  final Text text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30)),
          minimumSize: const Size.fromHeight(40),
        ),
        onPressed: onPressed,
        child: text);
  }
}

class Input_Text extends StatelessWidget {
  final bool obscureText;
  final String? labelText;

  Input_Text(this.labelText, this.obscureText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D156C)),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Color(0xFF2D156C),
            width: 3.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF0676FF),
            width: 1.0,
          ),
        ),
      ),
      style: TextStyle(
        color: Color(0xFF2D156C),
      ),
    );
  }
}
