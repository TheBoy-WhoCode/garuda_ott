import 'package:flutter/material.dart';
import 'package:garuda_ott/presentation/auth/OTP/widgets/sms_otp.dart';
import 'package:garuda_ott/widgets/custom_app_bar.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: "Verfication",
      body: SingleChildScrollView(
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
    );
  }
}
