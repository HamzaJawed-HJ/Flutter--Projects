class Movie {
  final String tittle;
  final String imageurl;
  final double imdbRating;
  final List<String> genere;
  final int playbackTime;

  Movie(
      {required this.tittle,
      required this.imageurl,
      required this.imdbRating,
      required this.genere,
      required this.playbackTime});

  static List<Movie> moviesList = [
    Movie(
      tittle: "Avengers: Endgame",
      imageurl:
          "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810",
      imdbRating: 8.4,
      genere: ["Action", "Adventure", "Fantasy"],
      playbackTime: 181,
    ),
    Movie(
      tittle: "Inception",
      imageurl:
          "https://c8.alamy.com/comp/2JKYCTN/movie-poster-inception-2010-2JKYCTN.jpg",
      imdbRating: 8.8,
      genere: ["Action", "Adventure", "Sci-Fi"],
      playbackTime: 148,
    ),
    Movie(
      tittle: "The Dark Knight",
      imageurl:
          "https://images.hungama.com/c/1/3c6/ae3/2659190/2659190_180x255.jpg",
      imdbRating: 9.0,
      genere: ["Action", "Crime", "Drama"],
      playbackTime: 152,
    ),
    Movie(
      tittle: "Pulp Fiction",
      imageurl:
          "https://w0.peakpx.com/wallpaper/747/157/HD-wallpaper-pulp-fiction-red-black-hair-thumbnail.jpg",
      imdbRating: 8.9,
      genere: ["Crime", "Drama"],
      playbackTime: 154,
    ),
    Movie(
      tittle: "Fight Club",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC1oJHkniQM6LYG2wQk6zyO1ZGFGvGejDgPw&usqp=CAU",
      imdbRating: 8.8,
      genere: ["Drama"],
      playbackTime: 139,
    ),
    Movie(
      tittle: "The Matrix",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfJBwVeWeMDrD8EmIhtCD84azNGrtvScRZOA&usqp=CAU",
      imdbRating: 8.7,
      genere: ["Action", "Sci-Fi"],
      playbackTime: 136,
    ),
    Movie(
      tittle: "Forrest Jump",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qLN4XTRCs8mBxCJDr1zG2gbdXht2hojY5Q&usqp=CAU",
      imdbRating: 8.8,
      genere: ["Drama", "Romance"],
      playbackTime: 142,
    ),
    Movie(
      tittle: "The Shawshank Redemption",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT87UPmD_dlhIc3-fllRwFuC4vGTP0REvu5Zg&usqp=CAU",
      imdbRating: 9.3,
      genere: ["Drama"],
      playbackTime: 142,
    ),
    Movie(
      tittle: "The Godfather",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSePSbewzXImDV_DDlTFrUNK0-iUbwhxb0WNA&usqp=CAU",
      imdbRating: 9.2,
      genere: ["Crime", "Drama"],
      playbackTime: 175,
    ),
    Movie(
      tittle: "The Social Network",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7uWN5_PrsRWwDtHZ0zQWyJQ4f3NQAsu8jHw&usqp=CAU",
      imdbRating: 7.7,
      genere: ["Biography", "Drama"],
      playbackTime: 120,
    ),
    Movie(
      tittle: "Interstellar",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRATT4bRx-W2gh2Ou2-52N5q7Yxeg3fhm56xw&usqp=CAU",
      imdbRating: 8.6,
      genere: ["Adventure", "Drama", "Sci-Fi"],
      playbackTime: 169,
    ),
    Movie(
      tittle: "The Avengers",
      imageurl: "https://example.com/the_avengers.jpg",
      imdbRating: 8.0,
      genere: ["Action", "Adventure", "Sci-Fi"],
      playbackTime: 143,
    ),
    Movie(
      tittle: "La La Land",
      imageurl: "https://example.com/la_la_land.jpg",
      imdbRating: 8.0,
      genere: ["Comedy", "Drama", "Music"],
      playbackTime: 128,
    ),
    Movie(
      tittle: "Titanic",
      imageurl: "https://example.com/titanic.jpg",
      imdbRating: 7.8,
      genere: ["Drama", "Romance"],
      playbackTime: 194,
    ),
    Movie(
      tittle: "Jurassic Park",
      imageurl: "https://example.com/jurassic_park.jpg",
      imdbRating: 8.1,
      genere: ["Adventure", "Sci-Fi", "Thriller"],
      playbackTime: 127,
    ),
    Movie(
      tittle: "The Lion King",
      imageurl: "https://example.com/the_lion_king.jpg",
      imdbRating: 8.5,
      genere: ["Animation", "Adventure", "Drama"],
      playbackTime: 88,
    ),
    Movie(
      tittle: "The Wolf of Wall Street",
      imageurl: "https://example.com/the_wolf_of_wall_street.jpg",
      imdbRating: 8.2,
      genere: ["Biography", "Comedy", "Crime"],
      playbackTime: 180,
    ),
    Movie(
      tittle: "Gladiator",
      imageurl: "https://example.com/gladiator.jpg",
      imdbRating: 8.5,
      genere: ["Action", "Adventure", "Drama"],
      playbackTime: 155,
    ),
    Movie(
      tittle: "Back to the Future",
      imageurl: "https://example.com/back_to_the_future.jpg",
      imdbRating: 8.5,
      genere: ["Adventure", "Comedy", "Sci-Fi"],
      playbackTime: 116,
    ),
    Movie(
      tittle: "The Silence of the Lambs",
      imageurl: "https://example.com/the_silence_of_the_lambs.jpg",
      imdbRating: 8.6,
      genere: ["Crime", "Drama", "Thriller"],
      playbackTime: 118,
    ),
    Movie(
      tittle: "The Departed",
      imageurl: "https://example.com/the_departed.jpg",
      imdbRating: 8.5,
      genere: ["Crime", "Drama", "Thriller"],
      playbackTime: 151,
    ),
    Movie(
      tittle: "The Prestige",
      imageurl: "https://example.com/the_prestige.jpg",
      imdbRating: 8.5,
      genere: ["Drama", "Mystery", "Sci-Fi"],
      playbackTime: 130,
    ),
    Movie(
      tittle: "Eternal Sunshine of the Spotless Mind",
      imageurl: "https://example.com/eternal_sunshine.jpg",
      imdbRating: 8.3,
      genere: ["Drama", "Romance", "Sci-Fi"],
      playbackTime: 108,
    ),
  ];

  getPlayBackTime() {
    return '${playbackTime ~/ 60}h ${playbackTime % 60}m';
  }
}
