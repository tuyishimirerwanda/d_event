import 'package:d_event/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBookNowButton {
  // Define custom outlined button style
  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: MyAppTheme.primaryColor,
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    side: const BorderSide(
      color: MyAppTheme.primaryColor, // Border color
      width: 1.0,
    ), // Border width
    //  minimumSize: const Size(60.0, 0.30), // Changed fixedSize to minimumSize
    shape: const RoundedRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(8.0)), // Button border radius
    ),
  );
}
