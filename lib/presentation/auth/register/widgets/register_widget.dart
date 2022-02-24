import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomTextFormField(
          textInputType: TextInputType.name,
          label: Text("Full Name"),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(
          textInputType: TextInputType.emailAddress,
          label: Text("Email Address"),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(
          textInputType: TextInputType.phone,
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(
          textInputType: TextInputType.visiblePassword,
          label: Text("Enter Password"),
          obscureText: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            logger.i("Sign UP");
          },
          child: Text(
            "Sign Up",
            style: themeData.textTheme.headline4,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            const Text("By Signing up, you are agreed with our"),
            TextButton(
              onPressed: () {
                logger.i("Terms & Conditions");
              },
              child: const Text(
                "Terms & Conditions",
                style: TextStyle(color: MyColors.textButtonColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
