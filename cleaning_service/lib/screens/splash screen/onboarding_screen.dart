import 'package:cleaning_service/screens/login&signUp/sign_in_screen.dart';
import 'package:cleaning_service/widgets/app_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controler = PageController();
  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: controler,
        children: [
          //1st page
          Stack(
            children: [
              Image(
                image: const AssetImage(
                  'assets/start screen1.png',
                ),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.85,
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.13,
                  left: MediaQuery.of(context).size.height * 0.2,
                  child: SmoothPageIndicator(
                    controller: controler,
                    count: 3,
                    effect: const ExpandingDotsEffect(),
                  )),
              BottomButton(
                  title: "Next",
                  onPress: () {
                    controler.nextPage(
                        duration: Duration(milliseconds: 450),
                        curve: Curves.easeInOut);
                  }),
            ],
          ),
          //2nd page

          Stack(
            children: [
              Image(
                image: const AssetImage(
                  'assets/start screen2.png',
                ),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.85,
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.12,
                  left: MediaQuery.of(context).size.height * 0.2,
                  child: SmoothPageIndicator(
                    controller: controler,
                    count: 3,
                    effect: const ExpandingDotsEffect(),
                  )),
              BottomButton(
                  title: "Next",
                  onPress: () {
                    controler.nextPage(
                        duration: Duration(milliseconds: 450),
                        curve: Curves.easeInOut);
                  }),
            ],
          ),
          //3rd page
          Stack(
            children: [
              Image(
                image: const AssetImage(
                  'assets/start screen3.png',
                ),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.85,
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.13,
                  left: MediaQuery.of(context).size.height * 0.2,
                  child: SmoothPageIndicator(
                    controller: controler,
                    count: 3,
                    effect: const ExpandingDotsEffect(),
                  )),
              BottomButton(
                  title: "Get Started!",
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
