import 'package:cleaning_service/screens/page_shifter.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bottom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage(
              'assets/welcome screen.png',
            ),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.85,
          ),
          BottomButton(
              title: "Get Started!",
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
