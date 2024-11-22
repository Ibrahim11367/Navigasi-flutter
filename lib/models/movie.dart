class MovieModel {
  int id;
  String title;
  double? voteAvarnge;
  String posterPath;
  MovieModel({
    required this.id,
    required this.title,
    this.voteAvarnge,
    required this.posterPath
  });
}