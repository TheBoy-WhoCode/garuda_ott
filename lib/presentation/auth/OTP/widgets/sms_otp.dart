import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SMSOtp extends StatefulWidget {
  const SMSOtp({Key? key}) : super(key: key);

  @override
  State<SMSOtp> createState() => _SMSOtpState();
}

class _SMSOtpState extends State<SMSOtp> {
  final String _code = "";

  String singnature = "";

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Enter 4 Digit verfication code we've sent on a given number.",
          style: themeData.textTheme.headline3,
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: PinFieldAutoFill(
            cursor: Cursor(color: Colors.white),
            codeLength: 4,
            decoration: UnderlineDecoration(
              textStyle: themeData.textTheme.headline1,
              colorBuilder: const FixedColorBuilder(Colors.white),
            ),
            currentCode: _code,
            onCodeSubmitted: (code) {},
            onCodeChanged: (code) {
              if (code!.length == 4) {
                FocusScope.of(context).requestFocus(FocusNode());
              }
            },
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () {
            SmsAutoFill().listenForCode;
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Continue",
                style: themeData.textTheme.headline3,
              ),
            ],
          ),
        )
      ],
    );
  }
}
