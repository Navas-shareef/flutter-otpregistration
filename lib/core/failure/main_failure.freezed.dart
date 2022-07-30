// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _ServerFailure server(
      {required String message, String title = 'ServerFailure'}) {
    return _ServerFailure(
      message: message,
      title: title,
    );
  }

  _NetworkFailure network(
      {required String message, String title = 'NetworkFailure'}) {
    return _NetworkFailure(
      message: message,
      title: title,
    );
  }

  _UnhandledFailure unhandled(
      {required String message, String title = 'UnhandledFailure'}) {
    return _UnhandledFailure(
      message: message,
      title: title,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String title) server,
    required TResult Function(String message, String title) network,
    required TResult Function(String message, String title) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message, String title});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String title});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
  }) {
    return _then(_ServerFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({required this.message, this.title = 'ServerFailure'});

  @override
  final String message;
  @JsonKey()
  @override
  final String title;

  @override
  String toString() {
    return 'Failure.server(message: $message, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String title) server,
    required TResult Function(String message, String title) network,
    required TResult Function(String message, String title) unhandled,
  }) {
    return server(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
  }) {
    return server?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure({required String message, String title}) =
      _$_ServerFailure;

  @override
  String get message;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(
          _NetworkFailure value, $Res Function(_NetworkFailure) then) =
      __$NetworkFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String title});
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(
      _NetworkFailure _value, $Res Function(_NetworkFailure) _then)
      : super(_value, (v) => _then(v as _NetworkFailure));

  @override
  _NetworkFailure get _value => super._value as _NetworkFailure;

  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
  }) {
    return _then(_NetworkFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkFailure implements _NetworkFailure {
  const _$_NetworkFailure(
      {required this.message, this.title = 'NetworkFailure'});

  @override
  final String message;
  @JsonKey()
  @override
  final String title;

  @override
  String toString() {
    return 'Failure.network(message: $message, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFailure &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$NetworkFailureCopyWith<_NetworkFailure> get copyWith =>
      __$NetworkFailureCopyWithImpl<_NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String title) server,
    required TResult Function(String message, String title) network,
    required TResult Function(String message, String title) unhandled,
  }) {
    return network(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
  }) {
    return network?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements Failure {
  const factory _NetworkFailure({required String message, String title}) =
      _$_NetworkFailure;

  @override
  String get message;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$NetworkFailureCopyWith<_NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnhandledFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$UnhandledFailureCopyWith(
          _UnhandledFailure value, $Res Function(_UnhandledFailure) then) =
      __$UnhandledFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String title});
}

/// @nodoc
class __$UnhandledFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnhandledFailureCopyWith<$Res> {
  __$UnhandledFailureCopyWithImpl(
      _UnhandledFailure _value, $Res Function(_UnhandledFailure) _then)
      : super(_value, (v) => _then(v as _UnhandledFailure));

  @override
  _UnhandledFailure get _value => super._value as _UnhandledFailure;

  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
  }) {
    return _then(_UnhandledFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnhandledFailure implements _UnhandledFailure {
  const _$_UnhandledFailure(
      {required this.message, this.title = 'UnhandledFailure'});

  @override
  final String message;
  @JsonKey()
  @override
  final String title;

  @override
  String toString() {
    return 'Failure.unhandled(message: $message, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnhandledFailure &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$UnhandledFailureCopyWith<_UnhandledFailure> get copyWith =>
      __$UnhandledFailureCopyWithImpl<_UnhandledFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String title) server,
    required TResult Function(String message, String title) network,
    required TResult Function(String message, String title) unhandled,
  }) {
    return unhandled(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
  }) {
    return unhandled?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String title)? server,
    TResult Function(String message, String title)? network,
    TResult Function(String message, String title)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(message, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
  }) {
    return unhandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _UnhandledFailure implements Failure {
  const factory _UnhandledFailure({required String message, String title}) =
      _$_UnhandledFailure;

  @override
  String get message;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$UnhandledFailureCopyWith<_UnhandledFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
