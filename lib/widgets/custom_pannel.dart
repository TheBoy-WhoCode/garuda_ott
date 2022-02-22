import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';

class CustomPannel extends StatelessWidget {
  final double heightPercentage;
  final double widthPercentage;
  final Widget child;

  const CustomPannel({
    Key? key,
    required this.heightPercentage,
    required this.widthPercentage,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * heightPercentage,
      width: width * widthPercentage,
      decoration: BoxDecoration(
        color: MyColors.pannelColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: child,
    );
  }
}
