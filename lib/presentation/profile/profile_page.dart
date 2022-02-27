import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'widgets/profile_detail.dart';
import 'widgets/profile_info.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Profile",
            style: themeData.textTheme.headline1,
          ),
        ),
      ),
      body: Column(
        children: const [
          ProfileInfo(),
          ProfileDetail(),
        ],
      ),
    );
  }
}
