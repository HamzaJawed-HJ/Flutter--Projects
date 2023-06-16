import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/'),
            radius: 23,
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Color.fromARGB(123, 255, 253, 253),
          child: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
