import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'widgets/login_pannel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
          Container(
            height: height * 0.6,
            width: width * 0.89,
            decoration: BoxDecoration(
              color: MyColors.pannelColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const LoginPannel(),
          ),
        ],
      ),
    );
  }
}
