import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/colors.dart';

import 'widgets/search_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: MyColors.scaffoldGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const SearchAppBar(),
        ),
      ),
    );
  }
}
