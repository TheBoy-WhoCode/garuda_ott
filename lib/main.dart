import 'package:flutter/material.dart';
import 'package:garuda_ott/presentation/auth/login/login_page.dart';
import 'package:garuda_ott/presentation/auth/login/widgets/login_background.dart';
import 'package:garuda_ott/presentation/presentation.dart';
import 'package:garuda_ott/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garuda Cinema',
      theme: CustomTheme.customTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [
        LoginBackground(),
        Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          body: Center(
            child: OTPPage(),
          ),
        )
      ],
    );
  }
}
