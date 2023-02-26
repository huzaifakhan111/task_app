import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:task_app/theme/colors.dart';

Widget customFormTextField({
  required String name,
  String initialValue = "",
  required String labelText,
  required String hintText,
  bool obscureText = false,
  IconButton? suffixIcon,
  required String? Function(String?)? validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          labelText,
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: ColorUtils.primaryColor),
        ),
      ),
      FormBuilderTextField(
        name: name,
        style: TextStyle(color: ColorUtils.primaryColor),
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: obscureText ? suffixIcon : null,
          filled: true,
          focusColor:ColorUtils.scaffoldBackgroundColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor:ColorUtils.scaffoldBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: ColorUtils.primaryColor),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialValue,
        validator: validator,
      ),
      SizedBox(height: 5.0),
    ],
  );
}