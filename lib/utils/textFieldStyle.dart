import 'package:flutter/material.dart';
import 'package:ivory/utils/colors.dart';

class TextFieldDecoration {
  static InputDecoration backgroundFillDecoration({
    Widget? prefix,
    String? hint,
    String? label,
    Widget? suffix,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      label: label != null ? Text(label) : null,
      labelStyle: const TextStyle(),
      hintText: hint,
      alignLabelWithHint: true,
      fillColor: ColorRes.lightBlue.withOpacity(0.5),
      filled: true,
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: prefix,
      ),
      suffixIcon: suffix,

      prefixIconConstraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1.5, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1.5, color: ColorRes.deepBlue),
        borderRadius: BorderRadius.circular(10),
      ),
      // errorBorder: TextFieldBorder().outlineErrorBorder(),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1.5, color: ColorRes.deepBlue),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
