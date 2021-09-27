import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/controller/movie_controller.dart';
import 'package:shirish_test_task/controller/nav_bar_controller.dart';

class CustomErrorWidget extends StatelessWidget {
  final MovieController _movieController = Get.find<MovieController>();
  final NavBarController _navBarController = Get.find<NavBarController>();
  final String title;
  final String subTitle;
  final String query;
  CustomErrorWidget(
      {Key key, @required this.title, @required this.subTitle, this.query})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20.vertical()),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 14.vertical()),
          ).paddingAll(15),
          RaisedButton(
            color: Theme.of(context).cardColor,
            onPressed: () {
              if (_navBarController.index.value == 1) {
                _movieController.fetchTopRatedMovies();
              } else if (_navBarController.index.value == 3) {
                _movieController.searchMovies(query);
              } else {
                _movieController.fetchNowPlayingMovies();
              }
            },
            child: Text("Retry"),
          ),
        ],
      ),
    );
  }
}
