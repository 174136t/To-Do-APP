import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color pupleColor = Color(0xFF673AB7);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFFF4667);
const Color white = Colors.white;
const Color primaryClr = pupleColor;
const Color darkGreyColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    backgroundColor: white,
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    backgroundColor: darkGreyColor,
    primaryColor: darkGreyColor,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24,
        color: Get.isDarkMode ? Colors.grey[400] : Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextStyle get headingStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 30,
         color: Get.isDarkMode ? Colors.white : Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextStyle get titleStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 16,
         color: Get.isDarkMode ? Colors.white : Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }

   TextStyle get subTitleStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 14,
         color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600],
        fontWeight: FontWeight.w400,
      ),
    );
  }