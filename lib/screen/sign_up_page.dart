import 'package:d_event/Theme/theme.dart';
import 'package:d_event/widget/elevated_button.dart';
import 'package:flutter/material.dart';

import '../widget/gradient_text_field.dart';
import '../widget/password_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyAppTheme.pageBackgroundDecoration,
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Sign Up',
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
                    'Please create your account here',
                    style: MyAppTheme.myTextStyle(
                        fontSize: MyAppTheme.fontSizeSmall16,
                        color: MyAppTheme.whiteColor,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(33, 2, 2, 10),
                    child: Align(
                      alignment:
                          Alignment.centerLeft, // Align this text to the left
                      child: Text(
                        'Enter Your Name',
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeSmall16,
                            color: MyAppTheme.whiteColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const GradientTextField(
                    hintText: 'Your Name',
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
                        'User Name',
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeSmall16,
                            color: MyAppTheme.whiteColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const GradientTextField(
                    hintText: 'Your Username',
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
                        'Email',
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeSmall16,
                            color: MyAppTheme.whiteColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const GradientTextField(
                    hintText: 'Your email',
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
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: MyElevatedButton.elevatedButtonStyle,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: MyAppTheme.blackColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
      ),
    );
  }
}
