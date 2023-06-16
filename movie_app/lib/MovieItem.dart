import 'movie.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/movie/details', arguments: movie);
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.all(4),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(movie.imageurl,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover)),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.black.withOpacity(0.5),
                        ],
                        stops: const [
                          0.0,
                          1.0
                        ])),
              ),
              Align(
                alignment: Alignment.bottomRight,
                // child: Rating(rating: movie.imdbRating),
              ),
            ])));
  }
}
