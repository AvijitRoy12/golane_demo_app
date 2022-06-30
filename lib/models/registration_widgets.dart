import 'package:flutter/material.dart';

class Signup_Elevated_Button extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;

  Signup_Elevated_Button(this.text, this.onTap, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Color(0xFF450AE5),
        color: color,
        elevation: 7.0,
        child: GestureDetector(
          onTap: onTap(),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
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
            width: 1.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF2D156C),
            width: 2.0,
          ),
        ),
      ),
      style: TextStyle(
        color: Color(0xFF2D156C),
      ),
    );
  }
}