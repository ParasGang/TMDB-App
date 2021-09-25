import 'package:flutter/material.dart';
import 'package:shirish_test_task/model/movie_details_model.dart';
import 'package:shirish_test_task/view/movie%20details/widgets/movie_backdrop_widget.dart';
import 'package:shirish_test_task/view/movie%20details/widgets/movie_overview_widget.dart';
import 'package:shirish_test_task/view/movie%20details/widgets/movie_ratings_widget.dart';
import 'package:shirish_test_task/view/movie%20details/widgets/movie_release_date_widget.dart';
import 'package:shirish_test_task/view/movie%20details/widgets/movie_title_widget.dart';

class MovieDetailsPage extends StatelessWidget {
  final MovieDetailsModel movieDetails;
  MovieDetailsPage({Key key, @required this.movieDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            MovieBackdropWidget(movieDetails: movieDetails),
            MovieTitleWidget(
              title: movieDetails.title,
            ),
            MovieReleaseDateWidget(date: movieDetails.releaseDate.toString()),
            MovieRatingsWidget(ratings: movieDetails.voteAverage),
            MovieOverviewWidget(overview: movieDetails.overview)
          ],
        ),
      )),
    );
  }
}

