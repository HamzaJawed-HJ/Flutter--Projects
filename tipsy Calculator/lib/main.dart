import 'package:flutter/material.dart';
import 'package:flutter_codelab/TipCalculator/TipCalculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: "Dancing Script",
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            titleMedium: TextStyle(color: Color(0xFFa2a5a4)),
            headlineMedium: TextStyle(
                color: Color(0xFF168954), fontWeight: FontWeight.bold),
          )),
      home: const TipCalculator(),
    );
  }
}
