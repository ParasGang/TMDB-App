import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/controller/movie_controller.dart';

class CustomErrorWidget extends StatelessWidget {
  final MovieController _movieController = Get.find<MovieController>();
  final String title;
  final String subTitle;
  CustomErrorWidget({Key key, @required this.title, @required this.subTitle})
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
              _movieController.fetchNowPlayingMovies();
            },
            child: Text("Retry"),
          ),
        ],
      ),
    );
  }
}
