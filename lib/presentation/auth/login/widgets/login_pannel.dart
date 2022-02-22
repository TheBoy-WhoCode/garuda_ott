import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class LoginPannel extends StatelessWidget {
  const LoginPannel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 26),
      child: Column(
        children: [
          const CustomTextFormField(
            prefix: Text("+91 "),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            textInputType: TextInputType.visiblePassword,
            label: Text("Password"),
            obscuringCharacter: "*",
            obscureText: true,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  logger.i("Forgot Password");
                },
                child: const Text("Forgot password?"),
              ),
              TextButton(
                onPressed: () {
                  logger.d("Sign up");
                },
                child: const Text("Sign Up"),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Sign In",
              style: themeData.textTheme.headline4,
            ),
          )
        ],
      ),
    );
  }
}
