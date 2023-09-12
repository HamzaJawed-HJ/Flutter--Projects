import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  Function(int)? onTap;
  int index;

  BottomNavBar({super.key, this.onTap, this.index = 0});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      iconSize: 30,
      elevation: 2,
      items: [
        BottomNavigationBarItem(
          icon: widget.index == 0
              ? const CircleAvatar(
                  radius: 20,
                  backgroundColor: blueColor,
                  child: Icon(
                    Icons.home_rounded,
                    color: whiteColor,
                  ),
                )
              : Icon(Icons.home_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.index == 1
              ? const CircleAvatar(
                  backgroundColor: blueColor,
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: whiteColor,
                  ),
                )
              : Icon(Icons.calendar_month_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.index == 2
              ? const CircleAvatar(
                  backgroundColor: blueColor,
                  child: Icon(
                    Icons.chat_outlined,
                    color: whiteColor,
                  ),
                )
              : const Icon(Icons.chat_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.index == 3
              ? const CircleAvatar(
                  backgroundColor: blueColor,
                  child: Icon(
                    Icons.person_4_outlined,
                    color: whiteColor,
                  ),
                )
              : const Icon(
                  Icons.person_4_outlined,
                ),
          label: '',
        )
      ],
      backgroundColor: whiteColor,
      selectedItemColor: blueColor,
      unselectedItemColor: Colors.grey.shade700,
      onTap: widget.onTap,
    );
  }
}
