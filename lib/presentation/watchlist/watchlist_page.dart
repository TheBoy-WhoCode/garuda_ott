import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class Watchlist extends StatelessWidget {
  const Watchlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          title: Text(
            "Watch List",
            style: themeData.textTheme.headline1,
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
