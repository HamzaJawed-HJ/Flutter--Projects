import 'package:flutter/material.dart';

import '../colors/colors.dart';

// ignore: must_be_immutable
class CleaningWidget extends StatelessWidget {
  String title;
  int counter;
  VoidCallback subOnPress;
  VoidCallback addOnPress;

  CleaningWidget({
    super.key,
    required this.title,
    required this.addOnPress,
    required this.counter,
    required this.subOnPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 8)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 1,
                  letterSpacing: 1),
            ),
            const Spacer(),
            IconButton(
              onPressed: addOnPress,
              icon: const CircleAvatar(
                backgroundColor: blueColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              counter.toString(),
              style: const TextStyle(
                color: blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            IconButton(
              onPressed: subOnPress,
              icon: const CircleAvatar(
                backgroundColor: blueColor,
                child: Icon(
                  Icons.remove,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
