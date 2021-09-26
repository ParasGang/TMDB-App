import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shirish_test_task/model/movie_details_model.dart';
import 'package:shirish_test_task/services/api_base_helper.dart';
import 'package:shirish_test_task/services/api_failure.dart';
import 'package:http/http.dart' as http;

class FetchMovieDetailsService extends ApiBaseHelper {
  Future<Either<ApiFailure, List<MovieDetailsModel>>> fetchmovies(
      {@required String movieType}) async {
    try {
      http.Response response =
          await http.get(Uri.parse("$baseUrl/movie/$movieType$key"));
      final Either<ApiFailure, dynamic> responseJson = returnResponse(response);
      return responseJson.fold((l) => left(l), (r) {
        List temp = r["results"] as List;
        List a = temp
            .map((e) => MovieDetailsModel.fromJson(e as Map<String, dynamic>))
            .toList();
        print(a);
        return right(a);
      });
    } on Exception catch (_) {
      return left(ApiFailure.unExpected());
    }
  }

  Future<Either<ApiFailure, List<MovieDetailsModel>>> searchmovies(
      {@required String query}) async {
    try {
      http.Response response =
          await http.get(Uri.parse("$baseUrl/search/movie$key&query=$query"));
      final Either<ApiFailure, dynamic> responseJson = returnResponse(response);
      return responseJson.fold((l) => left(l), (r) {
        List temp = r["results"] as List;
        List a = temp
            .map((e) => MovieDetailsModel.fromJson(e as Map<String, dynamic>))
            .toList();
        print(a);
        return right(a);
      });
    } on Exception catch (e) {
      print(e);
      return left(ApiFailure.unExpected());
    }
  }
}
