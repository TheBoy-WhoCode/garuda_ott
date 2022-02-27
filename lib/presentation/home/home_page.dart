import 'package:flutter/material.dart';
import 'package:garuda_ott/controllers/controllers.dart';
import 'package:garuda_ott/data/testData/data.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'package:get/get.dart';
import 'widgets/content_header.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/previews.dart';

class HomePage extends StatelessWidget {
  final HomeAppBarController _homeAppBarController =
      Get.put<HomeAppBarController>(HomeAppBarController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size(width, 50),
        child: Obx(
          () => HomeAppBar(
            scrollOffset: _homeAppBarController.offset.value,
          ),
        ),
      ),
      body: Obx(
        () => CustomScrollView(
          controller: _homeAppBarController.scrollController.value,
          slivers: const [
            SliverToBoxAdapter(
              child: ContentHeader(),
            ),
            // SliverPadding(
            //   padding: EdgeInsets.only(top: 20),
            //   sliver: SliverToBoxAdapter(
            //     child: Previews(
            //       key: PageStorageKey("previews"),
            //       title: "Previews",
            //       contentList: previews,
            //     ),
            //   ),
            // ),
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
                title: "Recently Added",
                contentList: originals,
              ),
            ),
            SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("mylist"),
                title: "Movies",
                contentList: myList,
              ),
            ),
            SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("orginals"),
                title: "Series",
                contentList: originals,
              ),
            ),
            SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("orginals"),
                title: "Short Films",
                contentList: originals,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
