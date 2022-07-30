import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory/pages/registrationPage.dart';
import 'package:ivory/utils/colors.dart';

import 'core/Getit/injectable.dart';
import 'cubit/LoginCubit/login_cubit.dart';
import 'cubit/otpCubit/otp_validation_cubit.dart';
import 'cubit/userDeatails/user_details_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<OtpValidationCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserDetailsCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: const ColorScheme.light(
              primary: ColorRes.deepBlue,
            ),
            appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
            checkboxTheme: CheckboxThemeData(
                checkColor: MaterialStateProperty.all(ColorRes.deepBlue),
                fillColor: MaterialStateProperty.all(ColorRes.lightBlue)),
            primaryColor: ColorRes.deepBlue,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 17)),
                    backgroundColor:
                        MaterialStateProperty.all(ColorRes.deepBlue)))),
        home: const RegistrationPage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
