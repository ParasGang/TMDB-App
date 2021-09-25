import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/model/movie_details_model.dart';
import 'package:shirish_test_task/services/api_failure.dart';
import 'package:shirish_test_task/view/movie%20details/movie_details_page.dart';
import 'widgets/custom_error_widget.dart';

class MoviesListPage extends StatelessWidget {
  final Either<ApiFailure, List<MovieDetailsModel>> movieDetails;
  MoviesListPage({Key key, @required this.movieDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return movieDetails.fold(
        (l) => l.map(
            noInternet: (_) => CustomErrorWidget(
                title: "No Internet",
                subTitle: "Please Turn on your net and try again"),
            unAuthorized: (_) => CustomErrorWidget(
                title: "Unauthorized",
                subTitle: "You are not allowed to access"),
            unExpected: (_) => CustomErrorWidget(
                title: "Something Went Wrong",
                subTitle: "Please try again later!"),
            serverError: (_) => CustomErrorWidget(
                title: "Server is Down",
                subTitle: "Please try again in some time")), (r) {
      List<MovieDetailsModel> movieList = movieDetails.getOrElse(() => null);
      return RefreshIndicator(
        onRefresh: () async {},
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              MovieDetailsModel movie = movieList[index];

              return GestureDetector(
                onTap: () {
                  Get.to(() => MovieDetailsPage(movieDetails: movie));
                },
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 350.horizontal(),
                        height: 195.horizontal(),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .shadowColor
                                    .withOpacity(0.25),
                                offset: Offset(0, 3.vertical()),
                                blurRadius: 7.vertical(),
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://image.tmdb.org/t/p/w342${movie.backdropPath}",
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            // height: 150.vertical(),
                            // width: double.maxFinite,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 195.horizontal(),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            colors: [
                              Theme.of(context).shadowColor,
                              Theme.of(context).shadowColor.withOpacity(0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: TextStyle(
                              fontSize: 25.vertical(),
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          Text(
                            "(" +
                                movie.releaseDate.toString().replaceRange(4,
                                    movie.releaseDate.toString().length, "") +
                                ")",
                            style: TextStyle(
                                fontSize: 18.vertical(),
                                color: Theme.of(context).hintColor,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                        ],
                      ).paddingAll(15),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 15, vertical: 10),
              );
            }),
      );
    });
  }
}


