import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ivory/core/failure/main_failure.dart';
import 'package:ivory/repository/repository.dart';

part 'otp_validation_cubit.freezed.dart';
part 'otp_validation_state.dart';

@injectable
class OtpValidationCubit extends Cubit<OtpValidationState> {
  final ApiService _apiService;
  OtpValidationCubit(this._apiService)
      : super(const OtpValidationState.pending());
  void validateOtp(String mobileNumber, String otp) async {
    emit(const OtpValidationState.pending());
    var response = await _apiService.validateOtp(mobileNumber, otp);
    var data = response.fold((failed) => OtpValidationState.failure(failed),
        (success) => OtpValidationState.success(success));
    emit(data);
  }
}
