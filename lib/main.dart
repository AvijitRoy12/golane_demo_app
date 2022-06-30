import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/navigationBar_components.dart';
import 'package:golane_demo_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: CustomNavBar(),
    );
  }
}
