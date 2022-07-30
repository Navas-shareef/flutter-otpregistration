import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:ivory/model/store.dart';
import 'package:ivory/repository/repository.dart';

import '../core/failure/main_failure.dart';

@LazySingleton(as: ApiService)
class DataService implements ApiService {
  @override
  Future<Either<Failure, String>> loginUser(String mobileNumber) async {
    try {
      Uri uri = Uri.parse('http://jl.demos4u.in/api/v1/supplier/login');
      var response = await http.post(uri,
          body: jsonEncode(<String, String>{
            "mobile": mobileNumber,
          }));
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 302) {
        return const Right('success');
      } else {
        return left(const Failure.server(message: 'server failure'));
      }
    } catch (error) {
      return left(const Failure.unhandled(message: 'unhandled failure'));
    }
  }

  @override
  Future<Either<Failure, String>> validateOtp(
      String mobileNumber, String otp) async {
    try {
      Uri uri = Uri.parse('http://jl.demos4u.in/api/v1/supplier/verify/otp');
      var response = await http.post(uri,
          body:
              jsonEncode(<String, String>{"mobile": mobileNumber, "otp": otp}));
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 302) {
        return const Right('success');
      } else {
        return left(const Failure.server(message: 'server failure'));
      }
    } catch (error) {
      return left(const Failure.unhandled(message: 'unhandled failure'));
    }
  }

  @override
  Future<Either<Failure, String>> userDetailSubmission(Store user) async {
    try {
      Uri uri =
          Uri.parse('http://localhost:8000/api/v1/supplier/register/complete');
      var response = await http.post(uri,
          body: jsonEncode(<String, String>{
            "mobile": user.mobile,
            "name": user.userName,
            "email": user.email,
            "logo": "${user.image};type=image/png",
          }));
      print(response.statusCode);
      print('dfgjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjf');

      if (response.statusCode == 200 || response.statusCode == 302) {
        return const Right('success');
      } else {
        return left(const Failure.server(message: 'server failure'));
      }
    } catch (error) {
      return left(const Failure.unhandled(message: 'unhandled failure'));
    }
  }
}
