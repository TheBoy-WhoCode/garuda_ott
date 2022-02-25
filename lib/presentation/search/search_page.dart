import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/search_detail.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverAppBar(
            floating: true,
            title: SearchAppBar(),
          ),
          SliverToBoxAdapter(
            child: SearchDetail(
                scrollController: _scrollController, themeData: themeData),
          ),
        ],
      ),
    );
  }
}
