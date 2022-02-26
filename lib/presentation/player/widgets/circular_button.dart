import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icons;
  const CircularButton({
    Key? key,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: const CircleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icons,
          size: 24,
        ),
      ),
    );
  }
}
