import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory/utils/textFieldStyle.dart';

import '../cubit/otpCubit/otp_validation_cubit.dart';
import '../utils/colors.dart';
import 'DetailsPage.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;
  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstDigitController = TextEditingController();
  TextEditingController secondDigitController = TextEditingController();
  TextEditingController thirdDigitController = TextEditingController();
  TextEditingController fourthDigitController = TextEditingController();
  TextEditingController fifthDigitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          height: double.infinity,
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
                'Verify your Phone Number',
                style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w900,
                    color: ColorRes.deepBlue),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Please enter the 5 digit code sent to\n ${widget.phoneNumber}',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorRes.deepBlue),
              ),
              const Spacer(
                flex: 1,
              ),
              const Text(
                'OTP',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorRes.deepBlue),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: firstDigitController,
                      validator: (value) {
                        if (value == null || value == '') {
                          return '';
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      }),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration:
                          TextFieldDecoration.backgroundFillDecoration(),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: secondDigitController,
                      validator: (value) {
                        if (value == null || value == '') {
                          return '';
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      }),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration:
                          TextFieldDecoration.backgroundFillDecoration(),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: thirdDigitController,
                      validator: (value) {
                        if (value == null || value == '') {
                          return '';
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      }),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration:
                          TextFieldDecoration.backgroundFillDecoration(),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: fourthDigitController,
                      validator: (value) {
                        if (value == null || value == '') {
                          return '';
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      }),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration:
                          TextFieldDecoration.backgroundFillDecoration(),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: fifthDigitController,
                      validator: (value) {
                        if (value == null || value == '') {
                          return '';
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      }),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration:
                          TextFieldDecoration.backgroundFillDecoration(),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Spacer(),
                  Text(
                    'OTP will expire in ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.deepBlue),
                  ),
                  Text(
                    '00.20',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                  Text(
                    ' s',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.deepBlue),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              BlocListener<OtpValidationCubit, OtpValidationState>(
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
                      success: (res) => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const DetailsPage())),
                      failure: (failure) {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text('authentication failed'),
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
                        if (firstDigitController.text.toString() +
                                secondDigitController.text.toString() +
                                thirdDigitController.text.toString() +
                                fourthDigitController.text.toString() +
                                fifthDigitController.text.toString() ==
                            '12345') {
                          BlocProvider.of<OtpValidationCubit>(context)
                              .validateOtp(
                                  widget.phoneNumber,
                                  firstDigitController.text.toString() +
                                      secondDigitController.text.toString() +
                                      thirdDigitController.text.toString() +
                                      fourthDigitController.text.toString() +
                                      fifthDigitController.text.toString());
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('otp invalid'),
                            backgroundColor: (Colors.red),
                            action: SnackBarAction(
                              label: 'dismiss',
                              onPressed: () {},
                            ),
                          ));
                        }
                      }
                    }),
                    child: const Text('Verify'),
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
    );
  }
}
