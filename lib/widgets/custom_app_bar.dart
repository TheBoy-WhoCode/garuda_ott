import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool onBack;
  final Widget body;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBack = true,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: onBack
            ? const Icon(
                Icons.arrow_back,
                size: 30,
              )
            : const SizedBox.shrink(),
        title: Text(
          title,
          style: themeData.textTheme.headline1,
        ),
      ),
      body: body,
    );
  }
}
