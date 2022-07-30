part of 'user_details_cubit.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.pending() = _Pending;
  const factory UserDetailsState.success(String result) = _Success;
  const factory UserDetailsState.failure(Failure failure) = _Failure;
}
