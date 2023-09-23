import 'package:d_event/screen/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../Theme/theme.dart';
import '../widget/elevated_button.dart';
import '../widget/outlined_button.dart';
import 'log_in_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  void navigateToSignUp(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const SignUpPage(),
    ));
  }

  void navigateLogIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const LogInPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyAppTheme.pageBackgroundDecoration,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/D-Event-logo.png',
                  height: 251,
                ),
                Text(
                  'Buying tickets just got easier and smarter.'
                  'Get your ticket from the convenience of'
                  'wherever you are ...',
                  style: MyAppTheme.myTextStyle(
                    fontSize: MyAppTheme.fontSizeExtraSmall12,
                    color: MyAppTheme.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {
                    navigateToSignUp(context);
                  },
                  style: MyOutLinedButton.outlinedButtonStyle,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyAppTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateLogIn(context);
                  },
                  style: MyElevatedButton.elevatedButtonStyle,
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: MyAppTheme.blackColor,
                    ),
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
