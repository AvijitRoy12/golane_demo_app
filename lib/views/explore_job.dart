// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/constants.dart';

class Explore_Jobs extends StatelessWidget {
  const Explore_Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Search your desired job here",
            style: TextStyle(color: Colors.blue, fontSize: 25.0),
          ),
        ),
      ],
    ));
  }
}
