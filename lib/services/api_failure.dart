import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
abstract class ApiFailure with _$ApiFailure {
  const factory ApiFailure.noInternet() = _NoInternet;
  const factory ApiFailure.unAuthorized() = _UnAuthorized;
  const factory ApiFailure.unExpected() = _UnExpected;
  const factory ApiFailure.serverError() = _ServerError;
}
