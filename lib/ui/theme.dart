import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blueGreyClr = Color.fromRGBO(32,47,60, 1);
const Color blueMClr = Color(0xFF4d708e);
const Color orangeClr = Color.fromRGBO(232,85,30, 1);
const Color orangeWClr = Color.fromRGBO(255,239,233, 1);
const Color blueClr = Color.fromRGBO(237,241,244, 1);
const Color blueDarkClr = Color.fromRGBO(40,40,40, 1);
const Color greenClr = Color.fromRGBO(80,169,66, 1);
const Color greenWhiteClr = Color.fromRGBO(238,248,237, 1);


const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = orangeClr;
const Color greyClr = Color.fromRGBO(178, 190, 181, 1);
const Color darkGreyClr = Color(0xFF121212);
//const Color darkGreyClr = Color.fromRGBO(30,30,30, 1);
//const Color darkHeaderClr = Color(0xFF424242);
const Color darkHeaderClr = Color.fromRGBO(30,30,30, 1);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr ,
    backgroundColor: blueClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: darkHeaderClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );

}
TextStyle get headingStyle {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 24,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 20,
      //fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 18,
      //fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 16,
      //fontWeight: FontWeight.w400,
      color: Get.isDarkMode ? blueClr : blueMClr,
    ),
  );
}

TextStyle get bodyStyle {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get body2Style {
  return GoogleFonts.signika(
    textStyle: TextStyle(
      fontSize: 12,
      //fontWeight: FontWeight.w400,
      color: Get.isDarkMode ? Colors.grey[200] : Colors.black,
    ),
  );
}