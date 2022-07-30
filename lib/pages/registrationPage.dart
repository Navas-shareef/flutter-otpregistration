import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory/cubit/LoginCubit/login_cubit.dart';
import 'package:ivory/pages/otpPage.dart';
import 'package:ivory/widgets/countryPicker.dart';

import '../utils/colors.dart';
import '../utils/textFieldStyle.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key, required this.title});

  final String title;

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isAgreed = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 3,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.25,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorRes.lightBlue.withOpacity(0.5),
                  ),
                  child: Center(
                    child: Image.network(
                      'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Get Started!',
                  style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.w900,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Complete your profile and sign up  with us',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorRes.deepBlue),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: numberController,
                  validator: (value) {
                    if (value == null || value == '') {
                      return 'Enter valid phone number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      prefix: const CountryCodePicker(), hint: 'mobile number'),
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isAgreed,
                        onChanged: ((value) {
                          setState(() {
                            isAgreed = value!;
                          });
                        })),
                    const Text(
                      'I agree with Terms & Services.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: ColorRes.deepBlue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocListener<LoginCubit, LoginState>(
                  listener: (context, state) {
                    state.when(
                        pending: (() => showDialog<void>(
                              barrierColor: Colors.white.withOpacity(0.5),
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => const Center(
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            )),
                        success: ((data) {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => OtpVerifyPage(
                                        phoneNumber:
                                            numberController.text.toString(),
                                      )));
                        }),
                        failure: (failure) {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('network failure ,Try again'),
                            backgroundColor: (Colors.red),
                            action: SnackBarAction(
                              label: 'dismiss',
                              onPressed: () {},
                            ),
                          ));
                        });
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (() {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<LoginCubit>(context)
                              .userLoin(numberController.text);
                        }
                      }),
                      child: const Text('Register'),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
