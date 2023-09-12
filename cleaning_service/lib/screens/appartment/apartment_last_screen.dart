import 'package:cleaning_service/screens/booking/my_booking_screen.dart';
import 'package:cleaning_service/screens/page_shifter.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../widgets/app_bottom_button.dart';

class AvailableSpeclist extends StatefulWidget {
  const AvailableSpeclist({super.key});

  @override
  State<AvailableSpeclist> createState() => _AvailableSpeclistState();
}

class _AvailableSpeclistState extends State<AvailableSpeclist> {
  bool light1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage(
              'assets/appartment done screen.png',
            ),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.85,
          ),
          Positioned(
            bottom: 65,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(18)),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    fixedSize:
                        Size.fromWidth(MediaQuery.of(context).size.width * 0.8),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => ScheduleScreen()),
                    );
                  },
                  child: Text(
                    "View Recipt",
                    style: TextStyle(
                        fontSize: 18, letterSpacing: 2, color: blueColor),
                  ),
                ),
              ),
            ),
          ),
          BottomButton(
              title: "Back To Homepage",
              onPress: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageShifter()));
              }),
        ],
      ),
    );
  }
}
