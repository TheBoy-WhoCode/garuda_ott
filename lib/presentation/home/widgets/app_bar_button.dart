import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: themeData.textTheme.headlineSmall,
      ),
    );
  }
}
