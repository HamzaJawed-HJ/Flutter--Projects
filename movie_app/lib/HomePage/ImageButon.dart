import 'package:flutter/material.dart';

class ImageButon extends StatelessWidget {
  const ImageButon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Chip(
                backgroundColor: Color.fromRGBO(84, 84, 84, 1.0),
                avatar: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
                label: Text(
                  'Play',
                  style: TextStyle(color: Colors.white),
                ))),
        SizedBox(width: 16.0),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Chip(
                backgroundColor: Colors.black,
                shape: StadiumBorder(side: BorderSide(color: Colors.white)),
                label: Text(
                  'Details',
                  style: TextStyle(color: Colors.white),
                ))),
      ],
    );
  }
}
