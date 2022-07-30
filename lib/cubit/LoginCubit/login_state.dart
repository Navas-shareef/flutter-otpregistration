part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.pending() = _Pending;
  const factory LoginState.success(String data) = _Success;
  const factory LoginState.failure(Failure failure) = _Failure;
}
