import 'package:flutter/material.dart';
import 'movie.dart';
import 'MovieItem.dart';
import 'MovieDetail.dart';

class SeriesMovieList extends StatefulWidget {
  const SeriesMovieList({super.key});

  @override
  State<SeriesMovieList> createState() => _SeriesMovieList();
}

class _SeriesMovieList extends State<SeriesMovieList> {
  List<Movie> movies = [];

  @override
  void initState() {
    int startIndex = 4;
    int lastIndex = 8;
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
