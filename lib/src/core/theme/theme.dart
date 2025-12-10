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
      labelSmall: TextStyle(color: AppColor.black, fontSize: 14),
      labelMedium: TextStyle(color: AppColor.black, fontSize: 18),
      labelLarge: TextStyle(color: AppColor.black, fontSize: 20),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.lightBackGroundColor,
      titleTextStyle: TextStyle(color: AppColor.black, fontSize: 24),
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
      labelSmall: TextStyle(color: AppColor.white, fontSize: 14),
      labelMedium: TextStyle(color: AppColor.white, fontSize: 18),
      labelLarge: TextStyle(color: AppColor.white, fontSize: 20),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.darkBackGroundColor,
      titleTextStyle: TextStyle(color: AppColor.white, fontSize: 24),
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
