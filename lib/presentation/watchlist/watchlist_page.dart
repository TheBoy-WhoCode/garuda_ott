import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Watch List",
              style: themeData.textTheme.headline1,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Movies",
              ),
              Tab(
                text: "Series",
              ),
              Tab(
                text: "Short Films",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            VideoContent(),
            VideoContent(),
            VideoContent(),
          ],
        ),
      ),
    );
  }
}
