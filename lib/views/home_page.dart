// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/center_tiles.dart';
import 'package:golane_demo_app/models/buttons.dart';
import 'package:golane_demo_app/models/constants.dart';
import 'package:golane_demo_app/views/explore_job.dart';
import 'package:golane_demo_app/views/login.dart';
import 'package:golane_demo_app/views/register.dart';

class HomePage extends StatelessWidget {
  String image1 = 'https://cdn-icons-png.flaticon.com/512/1803/1803330.png';
  String image3 = 'https://cdn-icons-png.flaticon.com/512/2344/2344103.png';
  String image2 =
      'https://cdn.iconscout.com/icon/free/png-256/find-jobs-1956265-1650428.png';

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
                  CenterTiles(
                    Color(0xFF321775),
                    Text(
                      'We automatically offer\nyour jobs\n that match you',
                      style: kTitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    NetworkImage(image1),
                  ),
                  CenterTiles(
                    Color(0xFF7453CE),
                    Text(
                      'We automatically offer\nyour jobs\n that match you',
                      style: kTitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    NetworkImage(image2),
                  ),
                  CenterTiles(
                    Color(0xFF5FEA96),
                    Text(
                      'We automatically offer\nyour jobs\n that match you',
                      style: kTitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    NetworkImage(image3),
                  ),
                ],
              ),
            ),
            Elevated_Buttons(Text('Explore jobs'), Color(0xFF2D156C), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Explore_Jobs()),
              );
            }),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 175.0,
                        child:
                            Text_Buttons(Text('Login'), Color(0xFF2D156C), () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                        })),
                    SizedBox(
                      width: 175.0,
                      child:
                          Text_Buttons(Text('Register'), Color(0xFF2D156C), () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
