import 'package:d_event/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;

  const PasswordTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            MyAppTheme.primaryColor,
            MyAppTheme.blackColor,
            MyAppTheme.blackColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: MyAppTheme.boarderColor,
          width: 1, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          obscureText: _obscureText, // Hide/show text
          style: TextStyle(
            fontSize: 16.sp,
            color: MyAppTheme.whiteColor,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color.fromARGB(126, 255, 254, 254),
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: MyAppTheme.primaryColor,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
