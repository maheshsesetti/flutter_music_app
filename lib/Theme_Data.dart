import 'package:flutter/material.dart';
import 'package:flutter_music_app/constants/app_icon_size.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        backgroundColor: const Color(0xffF7FAFF),
        errorColor: Colors.red),
    scaffoldBackgroundColor: const Color(0xffF7FAFF),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffF7FAFF),
        actionsIconTheme: IconThemeData(
          color: Colors.black,
          size: AppIconSize.appBarActionIconSize,
        ),
        iconTheme: IconThemeData(
            color: Colors.black, size: AppIconSize.appBarLeadingIconSize)),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
    ),
    useMaterial3: true,
  );
  static ThemeData dartTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        errorColor: Colors.red),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        actionsIconTheme: IconThemeData(
            color: Colors.white, size: AppIconSize.appBarActionIconSize),
        iconTheme: IconThemeData(
            color: Colors.white, size: AppIconSize.appBarLeadingIconSize)),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
    ),
    useMaterial3: true,
  );
}
