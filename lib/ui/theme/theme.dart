import 'package:flutter/material.dart';
import 'package:user_phone_management/gen/fonts.gen.dart';
import 'package:user_phone_management/ui/constants/colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: bgColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: FontFamily.vazir,
      ),
      titleMedium: TextStyle(
        color: redColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.vazir,
      ),
      bodyMedium: TextStyle(
        fontFamily: FontFamily.vazir,
        fontSize: 20,
        color: whiteColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
