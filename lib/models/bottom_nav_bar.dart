import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.transparent,
      child: BottomAppBar(
        color: Colors.transparent,
        child: ElevatedButton(

            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text(
              "Confirm",
              style: TextStyle(color: Colors.white),
            ),),
      ),);
  }
}
