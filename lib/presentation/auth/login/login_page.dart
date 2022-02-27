import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'widgets/login_background.dart';
import 'widgets/login_pannel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const LoginBackground(),
        Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Image.asset(Assets.logo1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomPannel(
                    heightPercentage: 0.6,
                    widthPercentage: 0.89,
                    child: LoginPannel(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
