import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Enter new password",
          style: themeData.textTheme.headline3,
        ),
        const CustomTextFormField(
          textInputType: TextInputType.text,
          obscureText: true,
          obscuringCharacter: "*",
          label: Text("Password"),
        ),
        const CustomTextFormField(
          textInputType: TextInputType.text,
          obscureText: true,
          obscuringCharacter: "*",
          label: Text("Confirm Password"),
        ),
        ElevatedButton(
          onPressed: () {
            logger.d("Reset Password");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Reset Password",
                style: themeData.textTheme.headline3,
              ),
            ],
          ),
        )
      ],
    );
  }
}
