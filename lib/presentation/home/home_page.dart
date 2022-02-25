import 'package:flutter/material.dart';
import 'package:garuda_ott/controllers/homeControllers/app_scroll_controller.dart';
import 'package:garuda_ott/data/testData/data.dart';
import 'package:garuda_ott/presentation/home/widgets/content_header.dart';
import 'package:garuda_ott/presentation/home/widgets/home_app_bar.dart';
import 'package:garuda_ott/utils/logs/logger.dart';
import 'package:get/get.dart';

import 'widgets/content_list.dart';
import 'widgets/previews.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeAppBarController homeAppBarController =
      Get.put<HomeAppBarController>(HomeAppBarController());

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size(width, 50),
        child: Obx(() {
          logger.d(
              "[HomeAppBarController] ${homeAppBarController.offset.value} ");
          return HomeAppBar(
            scrollOffset: homeAppBarController.offset.value,
          );
        }),
      ),
      body: CustomScrollView(
        controller: homeAppBarController.scrollController.value,
        slivers: const [
          SliverToBoxAdapter(
            child: ContentHeader(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: PageStorageKey("previews"),
                title: "Previews",
                contentList: previews,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: PageStorageKey("mylist"),
              title: "My List",
              contentList: myList,
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: PageStorageKey("orginals"),
              title: "Netflix Orginals",
              contentList: originals,
              isOriginals: true,
            ),
          ),
        ],
      ),
    );
  }
}
