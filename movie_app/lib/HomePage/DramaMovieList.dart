import 'package:flutter/material.dart';
import 'movie.dart';
import 'MovieItem.dart';
import 'MovieDetail.dart';

class DramaMovieList extends StatefulWidget {
  const DramaMovieList({super.key});

  @override
  State<DramaMovieList> createState() => _DramaMovieListState();
}

class _DramaMovieListState extends State<DramaMovieList> {
  List<Movie> movies = [];

  @override
  void initState() {
    int startIndex = 8;
    int lastIndex = 11;
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
