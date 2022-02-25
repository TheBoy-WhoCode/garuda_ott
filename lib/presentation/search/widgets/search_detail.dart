import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';

class SearchDetail extends StatelessWidget {
  const SearchDetail({
    Key? key,
    required ScrollController scrollController,
    required this.themeData,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        image: AssetImage(Assets.sintel), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: MyColors.transparentOverlayBlackBottomTop,
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
            ),
          );
        },
      ),
    );
  }
}
