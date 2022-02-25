import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'app_bar_button.dart';

class HomeAppBar extends StatelessWidget {
  final double scrollOffset;
  const HomeAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: MyColors.scaffoldColor
          .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppBarButton(
                    title: "Movies",
                    onTap: () {
                      logger.d("Movies");
                    },
                  ),
                  AppBarButton(
                    title: "Web Series",
                    onTap: () {
                      logger.d("Web Series");
                    },
                  ),
                  AppBarButton(
                    title: "Short Films",
                    onTap: () {
                      logger.d("Short Films");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
