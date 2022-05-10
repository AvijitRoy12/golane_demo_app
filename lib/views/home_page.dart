// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/center_tiles.dart';
import 'package:golane_demo_app/models/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Zenjob'),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "You decide how you want to work",
                  style: TextStyle(
                    color: Color(0xFF2A1676),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  CenterTiles(Color(0xFF2D156C)),
                  CenterTiles(Color(0xFF7453CE)),
                ],
              ),
            ),
            Elevated_Buttons(Text('Explore jobs'), Color(0xFF2D156C),),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text_Buttons(Text('Login'), Color(0xFF2D156C), (){}),
                  Text_Buttons(Text('Register'), Color(0xFF2D156C), (){}),
                ],
              ),
            ],)
          ],
        ),
      ),
    );
  }
}





