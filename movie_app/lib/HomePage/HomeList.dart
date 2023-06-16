import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_app/TrendingMovieList.dart';
import 'package:movie_app/DramaMovieList.dart';
import 'package:movie_app/SeriesMovieList.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Trending Now',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                Text('See all',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ))
              ],
            )),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [TrendingMovieList()])),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Series',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                Text('See all',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ))
              ],
            )),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [SeriesMovieList()])),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('TV Drama',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                Text('See all',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ))
              ],
            )),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [DramaMovieList()])),
      ],
    );
  }
}
