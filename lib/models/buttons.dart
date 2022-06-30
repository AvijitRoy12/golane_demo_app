import 'package:flutter/material.dart';

class Elevated_Buttons extends StatelessWidget {
  final Text text;
  final Color color;
  final VoidCallback onPressed;

  Elevated_Buttons(this.text, this.color, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: onPressed,
          child: text),
    );
  }
}

class Text_Buttons extends StatelessWidget {
  final Text text;
  final Color color;
  final VoidCallback onPressed;

  Text_Buttons(this.text, this.color, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: text,
        style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(
              width: 1,
              color: color,
            )),
            foregroundColor: MaterialStateProperty.all(color),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 10.0,),),
            textStyle:
                MaterialStateProperty.all(const TextStyle(fontSize: 12))));
  }
}
