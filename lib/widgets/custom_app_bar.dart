import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget body;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

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
            title,
            style: themeData.textTheme.headline1,
          ),
        ),
        body: body,
      ),
    );
  }
}
