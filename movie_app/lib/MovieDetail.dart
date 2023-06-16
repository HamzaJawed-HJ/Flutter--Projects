import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_app/movie.dart';
import 'TrendingMovieList.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(78, 80, 98, 1),
              Color.fromRGBO(49, 51, 64, 1),
              Color.fromRGBO(18, 20, 28, 1.0)
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.network(movie.imageurl,
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0.0),
                                  Colors.black.withOpacity(0.2),
                                ],
                                stops: const [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text(
                            "Most Liked",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 0),
                            child: Chip(
                              backgroundColor: Colors.black,
                              label: Text('${movie.getPlayBackTime()}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                            ))
                      ],
                    ),
                    Column(children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 84, 84, 84)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                'Play',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ))
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Wrap(
                        spacing: 8,
                        children: movie.genere
                            .map((e) => Chip(label: Text(e)))
                            .toList(),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(movie.tittle,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold))),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. Duis a arcu convallis, gravida purus eget, mollis diam. ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Text("Top Cast",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const CircleAvatar(
                                    radius: 36,
                                    backgroundColor: Colors.black,
                                    backgroundImage: NetworkImage(
                                        'https://cdn.feedingtrends.com/old-images/large_1605000704article_img.webp'),
                                  ),
                                  const Align(
                                      alignment: Alignment.center,
                                      child: Text('Robert Downey Jr',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ))),
                                  Padding(padding: EdgeInsets.all(8)),
                                  const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Iron Man',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ))
                                ])))
                  ]),
            )));
  }
}
