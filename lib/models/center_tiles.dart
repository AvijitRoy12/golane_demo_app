import 'package:flutter/material.dart';

class CenterTiles extends StatelessWidget {
  final Color color;

  CenterTiles(this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 20.0, right: 0.0, top: 20.0, bottom: 0.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}