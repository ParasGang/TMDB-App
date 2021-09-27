import 'dart:convert';

MovieDetailsModel movieDetailsModelFromJson(String str) =>
    MovieDetailsModel.fromJson(json.decode(str));

class MovieDetailsModel {
  MovieDetailsModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        adult: json["adult"] ?? false,
        backdropPath: json["backdrop_path"] ?? "",
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"] ?? "En",
        originalTitle: json["original_title"] ?? "NA",
        overview: json["overview"] == "" ? "NA" : json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"] ?? "",
        releaseDate: DateTime.parse((json["release_date"] ?? "") == ""
            ? "2013-06-29"
            : json["release_date"]),
        title: json["title"] ?? "NA",
        video: json["video"] ?? "",
        voteAverage: json["vote_average"].toDouble() ?? 0.0,
        voteCount: json["vote_count"] ?? 0,
      );
}
