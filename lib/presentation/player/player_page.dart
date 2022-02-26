import 'package:flutter/material.dart';
import 'package:garuda_ott/data/testData/data.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'season_detail.dart';
import 'widgets/movie_detail.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MoviePlayer(),
              MovieInfo(),
              MovieDetail(),
              SeasonDetail(),
              ContentList(
                key: PageStorageKey("mylist"),
                title: "More like this",
                contentList: myList,
              ),
              ContentList(
                key: PageStorageKey("series"),
                title: "Series like this",
                contentList: myList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
