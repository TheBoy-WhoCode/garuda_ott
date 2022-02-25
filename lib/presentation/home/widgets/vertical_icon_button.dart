import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const VerticalIconButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: themeData.textTheme.headline4,
          )
        ],
      ),
    );
  }
}
