import 'package:dartz/dartz.dart';

import '../core/failure/main_failure.dart';
import '../model/store.dart';

abstract class ApiService {
  Future<Either<Failure, String>> loginUser(String mobileNumber);
  Future<Either<Failure, String>> validateOtp(String mobileNumber, String otp);
  Future<Either<Failure, String>> userDetailSubmission(Store user);
}
