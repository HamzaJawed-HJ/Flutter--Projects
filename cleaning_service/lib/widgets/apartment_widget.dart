import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

class ApartmentWidget extends StatelessWidget {
  const ApartmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          ListTile(
              title: const Text(
                "Apartment Cleaning",
                style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "3456 order \t\t\t\t\t\t\t\t\t\t\t 145 worker",
                style: TextStyle(letterSpacing: 1),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_half_outlined,
                    color: Colors.green,
                    size: 40,
                  ))),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0XffE6EEFB),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Studio apartment from 25"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0XffE6EEFB),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Studio apartment from 25"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0XffE6EEFB),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Studio apartment from 25"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Types Of Cleaning",
            style: TextStyle(
                fontSize: 20, letterSpacing: 2, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/appartment.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" Floor cleaning"),
                  Text(" Dusting"),
                  Text(" Taking out the trash"),
                  Text(
                    " 8 more option",
                    style: TextStyle(
                        color: blueColor, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/appartment.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" Dusting Wall"),
                  Text(" Mirrors Washing"),
                  Text(" Cleanig of air Conditioners"),
                  Text(" Windows Washing"),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "FAQS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
