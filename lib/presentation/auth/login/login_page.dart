import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/themes/themes.dart';

import 'widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData themeData = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.loginBackground),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(gradient: MyColors.transparentOverlay),
        ),
        Positioned(
          top: 120,
          child: SizedBox(
            width: 200,
            child: Image.asset(Assets.logo1),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: MyColors.pannelColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomTextFormField(
                    prefix: Text("+91 "),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                    textInputType: TextInputType.visiblePassword,
                    label: Text("Password"),
                    obscuringCharacter: "*",
                    obscureText: true,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
