import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/controller/movie_controller.dart';
import 'package:shirish_test_task/controller/nav_bar_controller.dart';

class BottomNavBarWidget extends StatelessWidget {
  final NavBarController _navBarController = Get.find<NavBarController>();

  final MovieController _movieController = Get.find<MovieController>();
  BottomNavBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).cardColor,
        height: 60.vertical(),
        width: double.maxFinite,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarIconWidget(
                iconData: Icons.camera_outlined,
                text: "Now Playing",
                active: _navBarController.index.value == 0,
                onTap: () {
                  _navBarController.setIndex(0);
                  _movieController.fetchNowPlayingMovies();
                },
              ),
              NavBarIconWidget(
                iconData: Icons.star,
                text: "Top Rated",
                active: _navBarController.index.value == 1,
                onTap: () {
                  _navBarController.setIndex(1);
                  _movieController.fetchTopRatedMovies();
                },
              ),
            ],
          ),
        ));
  }
}

class NavBarIconWidget extends StatelessWidget {
  final bool active;
  final IconData iconData;
  final String text;
  final Function onTap;
  const NavBarIconWidget(
      {Key key,
      @required this.active,
      @required this.iconData,
      @required this.text,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(iconData,
              color: Theme.of(context).focusColor,
              size: active ? 30.vertical() : 22.vertical()),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).focusColor,
            ),
          )
        ],
      ),
    );
  }
}
