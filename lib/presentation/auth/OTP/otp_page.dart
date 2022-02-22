import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';

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
      ),
    );
  }
}
