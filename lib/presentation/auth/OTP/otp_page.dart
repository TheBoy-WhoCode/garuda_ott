import 'package:flutter/material.dart';
import 'package:garuda_ott/presentation/auth/OTP/widgets/sms_otp.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
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
            "Verification",
            style: themeData.textTheme.headline2,
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: CustomPannel(
              heightPercentage: 0.75,
              widthPercentage: 0.9,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: SMSOtp(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
