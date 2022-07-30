part of 'otp_validation_cubit.dart';

@freezed
class OtpValidationState with _$OtpValidationState {
  const factory OtpValidationState.pending() = _Pending;
  const factory OtpValidationState.success(String validationMessage) = _Success;
  const factory OtpValidationState.failure(Failure failurea) = _Failure;
}
