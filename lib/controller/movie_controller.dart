import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/model/movie_details_model.dart';
import 'package:shirish_test_task/services/api_failure.dart';
import 'package:shirish_test_task/services/fetch_movie_details_service.dart';

class MovieController extends GetxController {
  RxBool loading = false.obs;
  Rx<Either<ApiFailure, List<MovieDetailsModel>>> nowPayingMovieList =
      right<ApiFailure, List<MovieDetailsModel>>(<MovieDetailsModel>[]).obs;
  Rx<Either<ApiFailure, List<MovieDetailsModel>>> topRatedMovieList =
      right<ApiFailure, List<MovieDetailsModel>>(<MovieDetailsModel>[]).obs;

  Rx<Either<ApiFailure, List<MovieDetailsModel>>> searchedMovieList =
      right<ApiFailure, List<MovieDetailsModel>>(<MovieDetailsModel>[]).obs;

  FetchMovieDetailsService _fetchMovieDetailsService =
      FetchMovieDetailsService();

  @override
  void onInit() {
    super.onInit();
    fetchNowPlayingMovies();
    // fetchTopRatedMovies();
  }

  void fetchNowPlayingMovies() async {
    loading.value = true;
    nowPayingMovieList.value =
        await _fetchMovieDetailsService.fetchmovies(movieType: "now_playing");
    loading.value = false;
  }

  void fetchTopRatedMovies() async {
    loading.value = true;
    topRatedMovieList.value =
        await _fetchMovieDetailsService.fetchmovies(movieType: "top_rated");
    print(topRatedMovieList.value);
    loading.value = false;
  }

  void searchMovies(String query) async {
    loading.value = true;
    searchedMovieList.value =
        await _fetchMovieDetailsService.searchmovies(query: query);
    loading.value = false;
  }
}
