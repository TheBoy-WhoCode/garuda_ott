import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: "Downloads",
      body: VideoContent(),
      onBack: false,
    );
  }
}
