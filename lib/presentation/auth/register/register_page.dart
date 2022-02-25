import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'widgets/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return CustomAppBar(
      title: "Sign Up",
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: CustomPannel(
            heightPercentage: 0.75,
            widthPercentage: 0.9,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: RegisterWidget(themeData: themeData),
            ),
          ),
        ),
      ),
    );
  }
}
