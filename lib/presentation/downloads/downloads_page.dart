import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Downloads",
            style: themeData.textTheme.headline1,
          ),
        ),
      ),
      body: const VideoContent(),
    );
  }
}
