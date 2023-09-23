import 'package:d_event/screen/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/theme.dart';
import '../widget/elevated_button.dart';
import '../widget/gradient_text_field.dart';
import '../widget/password_text_field.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  void navigateToHomePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MyNavigationBar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: MyAppTheme.pageBackgroundDecoration,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                Text(
                  'Log In',
                  style: MyAppTheme.myTextStyle(
                    fontSize: MyAppTheme.fontSizeLarge30,
                    color: MyAppTheme.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Please Enter your account here',
                  style: MyAppTheme.myTextStyle(
                      fontSize: MyAppTheme.fontSizeSmall16,
                      color: MyAppTheme.whiteColor,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(33, 2, 2, 10),
                  child: Align(
                    alignment:
                        Alignment.centerLeft, // Align this text to the left
                    child: Text(
                      'Email or Username',
                      style: MyAppTheme.myTextStyle(
                          fontSize: MyAppTheme.fontSizeSmall16,
                          color: MyAppTheme.whiteColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const GradientTextField(
                  hintText: 'Email or Username',
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(33, 2, 2, 10),
                  child: Align(
                    alignment:
                        Alignment.centerLeft, // Align this text to the left
                    child: Text(
                      'Password',
                      style: MyAppTheme.myTextStyle(
                          fontSize: MyAppTheme.fontSizeSmall16,
                          color: MyAppTheme.whiteColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const PasswordTextField(
                  hintText: 'Your Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateToHomePage(context);
                  },
                  style: MyElevatedButton.elevatedButtonStyle,
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: MyAppTheme.blackColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Sign Up with',
                  style: MyAppTheme.myTextStyle(
                      fontSize: MyAppTheme.fontSizeExtraSmall12,
                      color: MyAppTheme.whiteColor,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 30,
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Center children and add space between
                    children: [
                      Expanded(child: Image.asset('images/fb.png')),
                      Expanded(child: Image.asset('images/gmail.png')),
                      Expanded(child: Image.asset('images/ig.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
