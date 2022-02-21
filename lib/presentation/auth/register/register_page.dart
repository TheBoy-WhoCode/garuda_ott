import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        title: Text(
          "Sign Up",
          style: themeData.textTheme.headline2,
        ),
      ),
      body: Container(),
    );
  }
}
