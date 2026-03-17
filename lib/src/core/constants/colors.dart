library app_colors;

import 'package:flutter/material.dart';

class AppColor {
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);
  
  // thème light
  static Color lightBackGroundColor = const Color(0xFFFCF8EC);
  static Color lightPrimaryColor = const Color.fromARGB(255, 83, 146, 58);
  static Color lightCardColor = const Color.fromARGB(255, 216, 244, 192);
  static Color lightTextColor = const Color.fromARGB(255, 10, 19, 2);
  static Color lightCanvasColor = Colors.white;
  static Color lightIndicatorColor = const Color.fromARGB(255, 193, 245, 148);  // indicateur menu actif
  static Color lightNavBackGroundColor = const Color.fromARGB(255, 251, 242, 216);

  // thème dark
  static Color darkBackGroundColor = const Color(0xFF00001a);
  static Color darkPrimaryColor = const Color.fromARGB(255, 83, 146, 58);
  static Color darkCardColor = const Color.fromARGB(255, 13, 124, 47);
  static Color darkTextColor = const Color.fromARGB(255, 246, 247, 245);
  static Color darkCanvasColor = Colors.black;
  static Color darkIndicatorColor =  AppColor.darkPrimaryColor;  // indicateur menu actif
  static Color darkNavBackGroundColor = const Color.fromARGB(255, 2, 45, 16);

  static List<Color> couleursCat = [
    const Color.fromARGB(255, 40, 229, 110),
    const Color.fromARGB(255, 241, 147, 47),
    const Color.fromARGB(255, 247, 152, 131),
    const Color.fromARGB(255, 206, 161, 223),
    const Color.fromARGB(255, 245, 218, 130),
    const Color.fromARGB(255, 151, 210, 242),
    const Color.fromARGB(255, 83, 177, 117),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color.fromARGB(255, 211, 176, 224),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];

}
