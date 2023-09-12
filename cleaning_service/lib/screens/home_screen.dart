import 'package:flutter/material.dart';

import '../widgets/CustomButtons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leadingWidth: double.infinity,
        toolbarHeight: 80,
        leading: const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?t=st=1690584010~exp=1690584610~hmac=61a99790ea214f0780ef9ccc54df669120077f07599d19f61d4497af69d56cab",
            ),
          ),
          title: Text(
            "Good morning, Leslia!",
            style: TextStyle(
                fontSize: 20, wordSpacing: 2, fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Idarah Noor e Haq, 503, Colony Muslimabad, Karachi"),
          trailing: CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(
                Icons.notifications_active_outlined,
              )),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SearchBar(
              hintText: "Search your Cleaning Services",
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade50),
            ),
          ),
          const Text(
            "Special Offers",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/pic1.png'),
                    width: 250,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  Image(
                    image: AssetImage('assets/pic2.png'),
                    width: 250,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  Image(
                    image: AssetImage('assets/pic3.png'),
                    width: 250,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Cleaning Categories",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Expanded(child: CustomButtons()),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
