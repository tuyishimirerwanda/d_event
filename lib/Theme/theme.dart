import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  // Define the page background decoration
  static const BoxDecoration pageBackgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        // Color.fromARGB(255, 32, 184, 151),
        Color(0xFF00151C),
        Color(0xFF00151C),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  static const LinearGradient containerbackground = LinearGradient(
    colors: [
      Color.fromARGB(255, 32, 184, 151),
      Color(0xFF00151C),
      Color(0xFF00151C),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient selectedcontainerbackground = LinearGradient(
    colors: [
      Color.fromARGB(255, 32, 184, 151),
      Color.fromARGB(255, 0, 56, 74),
      Color.fromARGB(255, 0, 56, 74),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Define custom colors
  static const Color primaryColor = Color.fromARGB(255, 32, 184, 151);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color orangeColor = Color(0xFFFFA800);
  static const Color blackColor = Color(0xFF00151C);
  static const Color boarderColor = Color.fromARGB(108, 36, 193, 159);
  static const Color hitColor = Color(0xFFFFFFFF);

  // Define custom font family using Google Fonts
  static TextStyle myTextStyle({
    double fontSize = 16.0,
    Color color = Colors.white, // Default to white if color is not provided
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }

  static double kPaddingHorizontal = 24.0;

  // Define custom text sizes
  static double fontSizeLarge30 = 30.0.sp;
  static double fontSizeMedium20 = 20.0.sp;
  static double fontSizeSmall16 = 16.0.sp;
  static double fontSizeExtraSmall12 = 12.0.sp;
}
