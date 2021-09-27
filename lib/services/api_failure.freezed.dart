// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

// ignore: unused_element
  _NoInternet noInternet() {
    return const _NoInternet();
  }

// ignore: unused_element
  _UnAuthorized unAuthorized() {
    return const _UnAuthorized();
  }

// ignore: unused_element
  _UnExpected unExpected({String query}) {
    return _UnExpected(
      query: query,
    );
  }

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
// ignore: unused_element
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noInternet(),
    @required TResult unAuthorized(),
    @required TResult unExpected(String query),
    @required TResult serverError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noInternet(),
    TResult unAuthorized(),
    TResult unExpected(String query),
    TResult serverError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noInternet(_NoInternet value),
    @required TResult unAuthorized(_UnAuthorized value),
    @required TResult unExpected(_UnExpected value),
    @required TResult serverError(_ServerError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noInternet(_NoInternet value),
    TResult unAuthorized(_UnAuthorized value),
    TResult unExpected(_UnExpected value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;
}

/// @nodoc
class _$_NoInternet with DiagnosticableTreeMixin implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.noInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.noInternet'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noInternet(),
    @required TResult unAuthorized(),
    @required TResult unExpected(String query),
    @required TResult serverError(),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noInternet(),
    TResult unAuthorized(),
    TResult unExpected(String query),
    TResult serverError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noInternet(_NoInternet value),
    @required TResult unAuthorized(_UnAuthorized value),
    @required TResult unExpected(_UnExpected value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noInternet(_NoInternet value),
    TResult unAuthorized(_UnAuthorized value),
    TResult unExpected(_UnExpected value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements ApiFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$UnAuthorizedCopyWith<$Res> {
  factory _$UnAuthorizedCopyWith(
          _UnAuthorized value, $Res Function(_UnAuthorized) then) =
      __$UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthorizedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnAuthorizedCopyWith<$Res> {
  __$UnAuthorizedCopyWithImpl(
      _UnAuthorized _value, $Res Function(_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _UnAuthorized));

  @override
  _UnAuthorized get _value => super._value as _UnAuthorized;
}

/// @nodoc
class _$_UnAuthorized with DiagnosticableTreeMixin implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.unAuthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.unAuthorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noInternet(),
    @required TResult unAuthorized(),
    @required TResult unExpected(String query),
    @required TResult serverError(),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noInternet(),
    TResult unAuthorized(),
    TResult unExpected(String query),
    TResult serverError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noInternet(_NoInternet value),
    @required TResult unAuthorized(_UnAuthorized value),
    @required TResult unExpected(_UnExpected value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noInternet(_NoInternet value),
    TResult unAuthorized(_UnAuthorized value),
    TResult unExpected(_UnExpected value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiFailure {
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$UnExpectedCopyWith<$Res> {
  factory _$UnExpectedCopyWith(
          _UnExpected value, $Res Function(_UnExpected) then) =
      __$UnExpectedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$UnExpectedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnExpectedCopyWith<$Res> {
  __$UnExpectedCopyWithImpl(
      _UnExpected _value, $Res Function(_UnExpected) _then)
      : super(_value, (v) => _then(v as _UnExpected));

  @override
  _UnExpected get _value => super._value as _UnExpected;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_UnExpected(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_UnExpected with DiagnosticableTreeMixin implements _UnExpected {
  const _$_UnExpected({this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.unExpected(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiFailure.unExpected'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnExpected &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$UnExpectedCopyWith<_UnExpected> get copyWith =>
      __$UnExpectedCopyWithImpl<_UnExpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noInternet(),
    @required TResult unAuthorized(),
    @required TResult unExpected(String query),
    @required TResult serverError(),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return unExpected(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noInternet(),
    TResult unAuthorized(),
    TResult unExpected(String query),
    TResult serverError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unExpected != null) {
      return unExpected(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noInternet(_NoInternet value),
    @required TResult unAuthorized(_UnAuthorized value),
    @required TResult unExpected(_UnExpected value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return unExpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noInternet(_NoInternet value),
    TResult unAuthorized(_UnAuthorized value),
    TResult unExpected(_UnExpected value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unExpected != null) {
      return unExpected(this);
    }
    return orElse();
  }
}

abstract class _UnExpected implements ApiFailure {
  const factory _UnExpected({String query}) = _$_UnExpected;

  String get query;
  @JsonKey(ignore: true)
  _$UnExpectedCopyWith<_UnExpected> get copyWith;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
class _$_ServerError with DiagnosticableTreeMixin implements _ServerError {
  const _$_ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noInternet(),
    @required TResult unAuthorized(),
    @required TResult unExpected(String query),
    @required TResult serverError(),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noInternet(),
    TResult unAuthorized(),
    TResult unExpected(String query),
    TResult serverError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noInternet(_NoInternet value),
    @required TResult unAuthorized(_UnAuthorized value),
    @required TResult unExpected(_UnExpected value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(noInternet != null);
    assert(unAuthorized != null);
    assert(unExpected != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noInternet(_NoInternet value),
    TResult unAuthorized(_UnAuthorized value),
    TResult unExpected(_UnExpected value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiFailure {
  const factory _ServerError() = _$_ServerError;
}
