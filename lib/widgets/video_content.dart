import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                height: 120,
                width: 180,
                child: Card(
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
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: MyColors.transparentOverlayBlackBottomTop,
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.play_arrow_rounded,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "S1 . E${index + 1}",
                                  style: themeData.textTheme.headline6,
                                ),
                                Text(
                                  "30 min",
                                  style: themeData.textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sintel",
                      style: themeData.textTheme.displayMedium,
                    ),
                    Text(
                      "200 mb",
                      style: themeData.textTheme.headline5,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.delete,
                size: 30,
              ),
            ],
          );
        },
      ),
    );
  }
}
