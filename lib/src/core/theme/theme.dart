library theme;

import 'package:emaya/src/core/constants/colors.dart';
import 'package:emaya/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.lightBackGroundColor,
    primaryColor: AppColor.lightPrimaryColor,
    textTheme: TextTheme(
      labelSmall: TextStyle(color: AppColor.black),
      labelMedium: TextStyle(color: AppColor.black),
      labelLarge: TextStyle(color: AppColor.black),
    ),
    cardColor: AppColor.lightCardColor,
    canvasColor: AppColor.lightCanvasColor,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.lightNavBackGroundColor,
      shadowColor: AppColor.darkTextColor,
      indicatorColor: AppColor.lightIndicatorColor,
      labelTextStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.black)),
      iconTheme: MaterialStateProperty.all(
        IconThemeData(color: AppColor.black),
      ),
    ),

  );

  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.darkBackGroundColor,
    primaryColor: AppColor.darkPrimaryColor,
    textTheme: TextTheme(
      labelSmall: TextStyle(color: AppColor.white),
      labelMedium: TextStyle(color: AppColor.white),
      labelLarge: TextStyle(color: AppColor.white),
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: const Color.fromARGB(255, 136, 145, 193),
          brightness: Brightness.dark,
        ),
    cardColor: AppColor.darkCardColor,
    canvasColor: AppColor.darkCanvasColor,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.darkNavBackGroundColor,
      shadowColor: AppColor.lightTextColor,
      indicatorColor: AppColor.darkIndicatorColor,
      labelTextStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.white)),
      iconTheme: MaterialStateProperty.all(
        IconThemeData(color: AppColor.white),
      ),
    ),

  );
}
