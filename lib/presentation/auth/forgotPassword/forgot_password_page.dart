import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';

import 'widgets/forgot_password_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return CustomAppBar(
      title: "Forgot Password",
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: CustomPannel(
            heightPercentage: 0.75,
            widthPercentage: 0.9,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: ForgotPasswordWidget(themeData: themeData),
            ),
          ),
        ),
      ),
    );
  }
}
