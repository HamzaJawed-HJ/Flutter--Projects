import 'package:cleaning_service/screens/booking/my_booking_screen.dart';
import 'package:cleaning_service/screens/chats/messages_screen.dart';
import 'package:cleaning_service/screens/home_screen.dart';
import 'package:cleaning_service/screens/profile/proflie_screen.dart';
import 'package:cleaning_service/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomePageShifter extends StatefulWidget {
  const HomePageShifter({super.key});

  @override
  State<HomePageShifter> createState() => _HomePageShifterState();
}

class _HomePageShifterState extends State<HomePageShifter> {
  int currentIndex = 0;
  List<Widget> tabBar = [
    const HomeScreen(),
    ScheduleScreen(),
    MessagesScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBar[currentIndex],
      bottomNavigationBar: BottomNavBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          index: currentIndex),
    );
  }
}
