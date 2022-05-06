import 'package:flutter/material.dart';

class Tickets extends StatelessWidget {


  final Text text;

  Tickets(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: text,
    );
  }
}