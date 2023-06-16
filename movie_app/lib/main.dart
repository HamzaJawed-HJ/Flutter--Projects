import 'package:flutter/material.dart';
import 'package:movie_app/movie.dart';
import 'MovieDetail.dart';
import 'package:movie_app/movieHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MovieHome(),
      routes: {
        '/MovieDetails': (context) => MovieDetail(
            movie: ModalRoute.of(context)?.settings.arguments as Movie),
      },
    );
  }
}
