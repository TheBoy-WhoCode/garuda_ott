import 'package:flutter/material.dart';

import 'package:garuda_ott/widgets/widgets.dart';

import 'widgets/profile_detail.dart';
import 'widgets/profile_info.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      onBack: false,
      title: "Profile",
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: const [
            ProfileInfo(),
            ProfileDetail(),
          ],
        ),
      ),
    );
  }
}
