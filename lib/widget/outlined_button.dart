import 'package:d_event/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOutLinedButton {
  // Define custom outlined button style
  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: MyAppTheme.primaryColor,
    textStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    side: const BorderSide(
      color: MyAppTheme.primaryColor, // Border color
      width: 1.0,
    ), // Border width
    minimumSize: const Size(345.0, 50.0), // Changed fixedSize to minimumSize
    shape: const RoundedRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(12.0)), // Button border radius
    ),
  );
}
