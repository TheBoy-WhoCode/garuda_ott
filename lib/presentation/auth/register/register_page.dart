import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(gradient: MyColors.scaffoldGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Container(
            height: height * 0.75,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: MyColors.pannelColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
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
                    onPressed: () {},
                    child: const Text("Sign Up"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
