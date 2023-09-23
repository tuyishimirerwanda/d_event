import 'package:d_event/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientTextField extends StatelessWidget {
  final String hintText;

  const GradientTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            // MyAppTheme.primaryColor,
            MyAppTheme.blackColor,
            MyAppTheme.blackColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
        border: Border.all(
          color: MyAppTheme.boarderColor,
          width: 1, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Adjust padding as needed
        child: TextField(
          style: TextStyle(
            fontSize: 16.sp,
            color: MyAppTheme.whiteColor, // Set text color to white
          ),
          decoration: InputDecoration(
            hintText: hintText, // Use the provided hintText parameter
            hintStyle: const TextStyle(
              color: Color.fromARGB(126, 255, 254, 254), // Set hint text color
            ),
            border: InputBorder.none, // Remove default TextField border
            enabledBorder: InputBorder.none, // Remove underline when enabled
            focusedBorder: InputBorder.none, // Remove underline when focused
          ),
        ),
      ),
    );
  }
}
