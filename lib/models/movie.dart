class Movie {
  final String title;
  final String posterPath;
  final int year;
  final String genre;
  final List<String> cast;
  final String synopsis;

  const Movie({
    required this.title,
    required this.posterPath,
    required this.year,
    required this.genre,
    required this.cast,
    required this.synopsis,
  });
}
