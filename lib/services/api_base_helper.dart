import 'dart:convert';

import 'package:shirish_test_task/services/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ApiBaseHelper {
  final String baseUrl = "https://api.themoviedb.org/3";
  final String key = "?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed";

  Either<ApiFailure, dynamic> returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        final responseJson = jsonDecode(response.body.toString());
        return right(responseJson);
      case 400:
        return left(const ApiFailure.unExpected());
      case 401:
      case 403:
        return left(const ApiFailure.unAuthorized());
      case 500:
      default:
        return left(const ApiFailure.unExpected());
    }
  }
}
