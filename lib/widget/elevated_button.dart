import 'package:d_event/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButton {
  // Define custom elevated button style
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: MyAppTheme.primaryColor,
    textStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    padding: const EdgeInsets.all(16.0),
    minimumSize: const Size(345.0, 50.0), // Changed fixedSize to minimumSize
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );
}
