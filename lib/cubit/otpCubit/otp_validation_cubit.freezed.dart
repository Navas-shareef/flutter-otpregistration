// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_validation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtpValidationStateTearOff {
  const _$OtpValidationStateTearOff();

  _Pending pending() {
    return const _Pending();
  }

  _Success success(String validationMessage) {
    return _Success(
      validationMessage,
    );
  }

  _Failure failure(Failure failurea) {
    return _Failure(
      failurea,
    );
  }
}

/// @nodoc
const $OtpValidationState = _$OtpValidationStateTearOff();

/// @nodoc
mixin _$OtpValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(String validationMessage) success,
    required TResult Function(Failure failurea) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpValidationStateCopyWith<$Res> {
  factory $OtpValidationStateCopyWith(
          OtpValidationState value, $Res Function(OtpValidationState) then) =
      _$OtpValidationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpValidationStateCopyWithImpl<$Res>
    implements $OtpValidationStateCopyWith<$Res> {
  _$OtpValidationStateCopyWithImpl(this._value, this._then);

  final OtpValidationState _value;
  // ignore: unused_field
  final $Res Function(OtpValidationState) _then;
}

/// @nodoc
abstract class _$PendingCopyWith<$Res> {
  factory _$PendingCopyWith(_Pending value, $Res Function(_Pending) then) =
      __$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PendingCopyWithImpl<$Res>
    extends _$OtpValidationStateCopyWithImpl<$Res>
    implements _$PendingCopyWith<$Res> {
  __$PendingCopyWithImpl(_Pending _value, $Res Function(_Pending) _then)
      : super(_value, (v) => _then(v as _Pending));

  @override
  _Pending get _value => super._value as _Pending;
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'OtpValidationState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(String validationMessage) success,
    required TResult Function(Failure failurea) failure,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements OtpValidationState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String validationMessage});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$OtpValidationStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? validationMessage = freezed,
  }) {
    return _then(_Success(
      validationMessage == freezed
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.validationMessage);

  @override
  final String validationMessage;

  @override
  String toString() {
    return 'OtpValidationState.success(validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality()
                .equals(other.validationMessage, validationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validationMessage));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(String validationMessage) success,
    required TResult Function(Failure failurea) failure,
  }) {
    return success(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
  }) {
    return success?.call(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(validationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OtpValidationState {
  const factory _Success(String validationMessage) = _$_Success;

  String get validationMessage;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failurea});

  $FailureCopyWith<$Res> get failurea;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$OtpValidationStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failurea = freezed,
  }) {
    return _then(_Failure(
      failurea == freezed
          ? _value.failurea
          : failurea // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failurea {
    return $FailureCopyWith<$Res>(_value.failurea, (value) {
      return _then(_value.copyWith(failurea: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failurea);

  @override
  final Failure failurea;

  @override
  String toString() {
    return 'OtpValidationState.failure(failurea: $failurea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failurea, failurea));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failurea));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(String validationMessage) success,
    required TResult Function(Failure failurea) failure,
  }) {
    return failure(failurea);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
  }) {
    return failure?.call(failurea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(String validationMessage)? success,
    TResult Function(Failure failurea)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(failurea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OtpValidationState {
  const factory _Failure(Failure failurea) = _$_Failure;

  Failure get failurea;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
