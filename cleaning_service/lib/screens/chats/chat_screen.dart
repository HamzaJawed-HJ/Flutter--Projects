import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

import 'chat_sample.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leadingWidth: 30,
          scrolledUnderElevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  " Name",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  child: Icon(Icons.call),
                  backgroundColor: Colors.grey.shade300,
                )),
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  child: Icon(Icons.more_vert_sharp),
                  backgroundColor: Colors.grey.shade300,
                )),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        children: [
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
        ],
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
                color: blueColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type Something",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.send,
                size: 30,
                color: blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
