import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    @Default('ServerFailure') String title,
  }) = _ServerFailure;
  const factory Failure.network({
    required String message,
    @Default('NetworkFailure') String title,
  }) = _NetworkFailure;
  const factory Failure.unhandled({
    required String message,
    @Default('UnhandledFailure') String title,
  }) = _UnhandledFailure;
}
