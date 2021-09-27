import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/controller/connectivity_controller.dart';
import 'package:shirish_test_task/controller/movie_controller.dart';
import 'package:shirish_test_task/controller/nav_bar_controller.dart';
import 'package:shirish_test_task/view/movies_list_page.dart';
import 'package:shirish_test_task/view/widgets/bottom_nav_bar_widget.dart';
import 'package:shirish_test_task/view/widgets/change_theme_button_widget.dart';
import 'package:shirish_test_task/view/widgets/custom_error_widget.dart';
import 'package:shirish_test_task/view/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  final MovieController _movieController = Get.put(MovieController());
  final NavBarController _navBarController = Get.put(NavBarController());
  final ConnectivityController _connectivityController =
      Get.put(ConnectivityController());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        // color: Theme.of(context).primaryColorLight.withOpacity(0.9),
        child: BottomNavBarWidget(),
      ),
      body: Obx(
        () => _connectivityController.connectivity.value
            ? HomePageBody()
            : Center(
                child: CustomErrorWidget(
                    title: "No Internet",
                    subTitle: "Please Turn on your net and try again"),
              ),
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  final NavBarController _navBarController = Get.find<NavBarController>();
  final MovieController _movieController = Get.find<MovieController>();
  HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24.vertical(),
        ),
        Container(
          // color: Colors.red,
          child: Row(
            children: [
              Expanded(child: SearchBar(onTap: (String value) {
                _movieController.searchMovies(value);
              })),
              ChangeThemeButtonWidget()
            ],
          ),
        ),
        Obx(
          () => _movieController.loading.value
              ? Expanded(
                  child: Center(
                    child: SpinKitDoubleBounce(
                      color: Theme.of(context).shadowColor,
                    ),
                  ),
                )
              : Expanded(
                  child: MoviesListPage(
                      movieDetails: _navBarController.index.value == 0
                          ? _movieController.nowPayingMovieList.value
                          : _navBarController.index.value == 1
                              ? _movieController.topRatedMovieList.value
                              : _movieController.searchedMovieList.value),
                ),
        ),
      ],
    );
  }
}
