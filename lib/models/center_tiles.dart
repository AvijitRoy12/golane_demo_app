import 'package:flutter/material.dart';

class CenterTiles extends StatelessWidget {
  final Color color;
  final Text text;
  final ImageProvider<Object> image;

  CenterTiles(this.color, this.text, this.image);

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
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: image, height: 100, width: 100,),
            SizedBox(
              height: 15,
            ),
            text
          ],
        ),
      ),
    );
  }
}
