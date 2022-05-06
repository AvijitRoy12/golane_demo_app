import 'package:flutter/material.dart';

class user_route extends StatelessWidget {
  final Text text;

  user_route(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 1.2,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          enabled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}