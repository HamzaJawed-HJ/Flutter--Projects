import 'package:flutter/material.dart';

import 'package:movie_app/Home/HomeImage.dart';
import 'package:movie_app/Home/Topbar.dart';
import 'ImageButon.dart';
import 'package:movie_app/Home/HomeList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: const [
                  HomeImage(),
                  SafeArea(
                      minimum: EdgeInsets.fromLTRB(30, 20, 30, 30),
                      child: TopBar()),
                  SafeArea(
                      minimum: EdgeInsets.fromLTRB(30, 400, 30, 30),
                      child: ImageButon()),
                ],
              ),
              const HomeList(),
            ],
          ),
        ),
      ),
    );
  }
}
