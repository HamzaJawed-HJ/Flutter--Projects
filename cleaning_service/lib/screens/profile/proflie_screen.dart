import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?t=st=1690584010~exp=1690584610~hmac=61a99790ea214f0780ef9ccc54df669120077f07599d19f61d4497af69d56cab",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Leslia Jones",
              style: TextStyle(
                  color: blueColor,
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "+97-84390745 ",
              style: TextStyle(
                  color: TextColor,
                  // letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "nuv jn reu vnugn  uph vbht ife",
              style: TextStyle(
                  color: TextColor, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(height: 10),
            ProfileWidget(
              title: "Edit Profile",
              icon: Icons.person_3,
              onTap: () {},
            ),
            ProfileWidget(
              title: "Notifications",
              icon: Icons.notifications,
              onTap: () {},
            ),
            ProfileWidget(
                title: "Settings", icon: Icons.settings, onTap: () {}),
            ProfileWidget(
                title: "Terms of Use", icon: Icons.info, onTap: () {}),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.key_sharp,
                  color: Colors.red,
                  size: 25,
                ),
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ProfileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 25,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        Divider(
          height: 15,
          thickness: 0.3,
        ),
      ],
    );
  }
}
