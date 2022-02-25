import 'package:flutter/material.dart';
import 'package:garuda_ott/controllers/homeControllers/app_scroll_controller.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:get/get.dart';
import 'app_bar_button.dart';

class HomeAppBar extends StatelessWidget {
  final double scrollOffset;
  HomeAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  final HomeAppBarController homeAppBarController = Get.find();

  @override
  Widget build(BuildContext context) {
    // logger.d("[HomeAppBar] ${(homeAppBarController.offset.value / 350)} ");
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
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
