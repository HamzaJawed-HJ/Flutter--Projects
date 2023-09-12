import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

class OngoingSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 3,
              ),
            ],
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Danival Mark",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 2),
                  ),
                  subtitle: Text("Apaertment cleanig"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?t=st=1690584010~exp=1690584610~hmac=61a99790ea214f0780ef9ccc54df669120077f07599d19f61d4497af69d56cab"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    // color: Colors.black,
                    thickness: 2,
                    height: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "10/10/2023",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "10:30 AM",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Processing",
                          style: TextStyle(
                            color: Colors.red.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Reschedule",
                          style: TextStyle(
                              fontSize: 18, letterSpacing: 2, color: blueColor),
                        )),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
