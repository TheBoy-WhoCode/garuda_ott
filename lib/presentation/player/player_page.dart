import 'package:flutter/material.dart';

import 'widgets/movie_info.dart';
import 'widgets/movie_player.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: const [
            MoviePlayer(),
            MovieInfo(),
          ],
        ),
      ),
    );
  }
}
