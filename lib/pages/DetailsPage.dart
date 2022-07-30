import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ivory/model/store.dart';
import 'package:ivory/widgets/countryPicker.dart';

import '../cubit/userDeatails/user_details_cubit.dart';
import '../utils/colors.dart';
import '../utils/textFieldStyle.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

var items = [
  'Super Market',
  'Retail Shop',
  'Vegetable Shop',
];
String storeName = items[0];

class _DetailsPageState extends State<DetailsPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController storeNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: InkWell(
          onTap: (() {
            Navigator.of(context).pop();
          }),
          child: const Icon(
            Icons.arrow_back,
            color: ColorRes.deepBlue,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Information',
                  style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.w900,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Complete your basic profile to verify.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Store Logo(optional)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: imageController,
                  validator: (value) {
                    if (value == null || value == '') {
                      return '';
                    }
                    return null;
                  },
                  enabled: true,
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      suffix: Transform.rotate(
                        angle: -math.pi / 5,
                        child: InkWell(
                          onTap: (() {
                            showImageSourceSheet(context).then((value) async {
                              final ImagePicker picker = ImagePicker();
                              XFile? image;

                              if (value == ImageSource.camera) {
                                // Capture a _image
                                image = await picker.pickImage(
                                    source: ImageSource.camera);
                                setState(() {
                                  imageController.text = image!.name;
                                });
                              } else if (value == ImageSource.gallery) {
                                // Pick an image
                                image = await picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  imageController.text = image!.name;
                                });
                              }
                            });
                          }),
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.attach_file,
                              color: ColorRes.deepBlue,
                            ),
                          ),
                        ),
                      ),
                      hint: 'eg: logo.jpg'),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Store Name',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: storeNameController,
                  validator: (value) {
                    if (value == null || value == '') {
                      return '';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      hint: 'name'),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Shope Type',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                    decoration: TextFieldDecoration.backgroundFillDecoration(),
                    value: storeName,
                    items: items
                        .map((String item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        storeName = value.toString();
                      });
                    }),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'contact Person/Branch Manager',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value == '') {
                      return '';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      hint: 'name'),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.deepBlue),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value == '') {
                      return '';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      hint: 'abc@gmail.com'),
                ),
                const SizedBox(
                  height: 18,
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
                  controller: mobileNumberController,
                  validator: (value) {
                    if (value == null || value == '') {
                      return '';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  decoration: TextFieldDecoration.backgroundFillDecoration(
                      prefix: const CountryCodePicker(), hint: 'mobile number'),
                ),
                const SizedBox(
                  height: 35,
                ),
                BlocListener<UserDetailsCubit, UserDetailsState>(
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
                        success: (res) {},
                        failure: (failure) {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Submission failed'),
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
                          print('ggfgfgds');
                          BlocProvider.of<UserDetailsCubit>(context).submitData(
                              Store(
                                  userName: storeName,
                                  mobile: mobileNumberController.text,
                                  email: emailController.text,
                                  image: imageController.text,
                                  shopType: '1'));
                        }
                      }),
                      child: const Text('Register'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<ImageSource?> showImageSourceSheet(BuildContext ctx) async {
    return showModalBottomSheet<ImageSource>(
      isDismissible: true,
      context: ctx,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "User Photo",
              style: TextStyle(
                  fontSize: 28,
                  color: ColorRes.deepBlue,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                _buildPickerIcon(
                  "Camera",
                  const Icon(
                    Icons.camera,
                    color: ColorRes.deepBlue,
                    size: 50,
                  ),
                  60,
                  () => Navigator.of(context).pop(ImageSource.camera),
                ),
                const SizedBox(
                  width: 15,
                ),
                _buildPickerIcon(
                  "Gallery",
                  const Icon(
                    Icons.file_download_sharp,
                    color: ColorRes.deepBlue,
                    size: 50,
                  ),
                  60,
                  () => Navigator.of(context).pop(ImageSource.gallery),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPickerIcon(
    String label,
    Widget image,
    double iconHeight,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: iconHeight,
            width: iconHeight,
            child: image,
          ),
          const SizedBox(
            width: 100,
          ),
          Text(
            label,
            style: const TextStyle(
                fontSize: 20,
                color: ColorRes.deepBlue,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
