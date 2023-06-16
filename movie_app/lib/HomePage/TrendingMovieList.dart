import 'package:flutter/material.dart';
import 'movie.dart';
import 'MovieItem.dart';
import 'MovieDetail.dart';

class TrendingMovieList extends StatefulWidget {
  const TrendingMovieList({super.key});

  @override
  State<TrendingMovieList> createState() => _TrendingMovieList();
}

class _TrendingMovieList extends State<TrendingMovieList> {
  List<Movie> movies = [];

  @override
  void initState() {
    int startIndex = 0;
    int lastIndex = 4;
    movies = List.from(Movie.moviesList.getRange(startIndex, lastIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => MovieItem(
                        movie: movies[index],
                      ))))
        ],
      ),
    );
  }
}
