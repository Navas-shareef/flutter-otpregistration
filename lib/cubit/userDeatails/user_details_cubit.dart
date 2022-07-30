import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ivory/core/failure/main_failure.dart';
import 'package:ivory/model/store.dart';
import 'package:ivory/repository/repository.dart';

part 'user_details_cubit.freezed.dart';
part 'user_details_state.dart';

@injectable
class UserDetailsCubit extends Cubit<UserDetailsState> {
  final ApiService _apiService;
  UserDetailsCubit(this._apiService) : super(const UserDetailsState.pending());
  void submitData(Store user) async {
    emit(const UserDetailsState.pending());
    var response = await _apiService.userDetailSubmission(user);
    response.fold((failure) => emit(UserDetailsState.failure(failure)),
        (result) => emit(UserDetailsState.success(result)));
  }
}
