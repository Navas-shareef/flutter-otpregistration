// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../cubit/LoginCubit/login_cubit.dart' as _i5;
import '../../cubit/otpCubit/otp_validation_cubit.dart' as _i6;
import '../../cubit/userDeatails/user_details_cubit.dart' as _i7;
import '../../datasources/datasources.dart' as _i4;
import '../../repository/repository.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ApiService>(() => _i4.DataService());
  gh.factory<_i5.LoginCubit>(() => _i5.LoginCubit(get<_i3.ApiService>()));
  gh.factory<_i6.OtpValidationCubit>(
      () => _i6.OtpValidationCubit(get<_i3.ApiService>()));
  gh.factory<_i7.UserDetailsCubit>(
      () => _i7.UserDetailsCubit(get<_i3.ApiService>()));
  return get;
}
