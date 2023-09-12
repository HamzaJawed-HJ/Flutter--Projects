import 'package:flutter/material.dart';

import '../colors/colors.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  String title;
  VoidCallback onPress;
  BottomButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [BoxShadow(color: blueColor, blurRadius: 8)],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: blueColor,
                fixedSize:
                    Size.fromWidth(MediaQuery.of(context).size.width * 0.8)),
            onPressed: onPress,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
