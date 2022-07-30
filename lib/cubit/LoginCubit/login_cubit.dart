import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ivory/core/failure/main_failure.dart';
import 'package:ivory/repository/repository.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final ApiService _apiService;
  LoginCubit(this._apiService) : super(const LoginState.pending());
  void userLoin(String mobileNumber) async {
    emit(const LoginState.pending());

    var response = await _apiService.loginUser(mobileNumber);

    var data = response.fold((failed) => LoginState.failure(failed),
        (success) => LoginState.success(success));

    emit(data);
  }
}
