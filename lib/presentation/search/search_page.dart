import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/themes/colors.dart';

import 'widgets/search_app_bar.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(gradient: MyColors.scaffoldGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const SliverAppBar(
              floating: true,
              title: SearchAppBar(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 10.0 / 6.8,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Assets.sintel),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient:
                                    MyColors.transparentOverlayBlackBottomTop,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Name",
                                style: themeData.textTheme.displayLarge,
                              ),
                            ),
                          ],
                        )
                        // Column(
                        //   children: [
                        //     Expanded(
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //           image: DecorationImage(
                        //               image: AssetImage(Assets.sintel),
                        //               fit: BoxFit.fill),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(10.0),
                        //       child: Text(
                        //         "Name",
                        //         style: TextStyle(fontSize: 18.0),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
