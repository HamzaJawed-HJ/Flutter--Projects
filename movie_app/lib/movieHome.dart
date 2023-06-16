import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_app/Home/HomePage.dart';
import 'package:movie_app/movie.dart';

import 'MovieDetail.dart';

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  List<Widget> tabBar = [
    const HomePage(),
    const Text("WORK IN PROGRESS",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),
    MovieDetail(movie: Movie.moviesList.first),
    const Text("WORK IN PROGRESS",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ))
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(12, 12, 12, 1),
            Color.fromRGBO(0, 0, 0, 1),
            Color.fromRGBO(2, 2, 2, 1)
          ])),
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromRGBO(49, 51, 64, 1),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '.',
              ),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(child: tabBar[currentIndex])),
    );
  }
}
