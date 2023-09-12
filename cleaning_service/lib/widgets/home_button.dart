import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeButton extends StatelessWidget {
  HomeButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.iconColor = blueColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFE5EEFA),
                  radius: 40,
                  child: Icon(
                    icon,
                    size: 50,
                    color: iconColor,
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(8)),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
