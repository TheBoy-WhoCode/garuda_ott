import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';

class MoviePlayer extends StatelessWidget {
  const MoviePlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.atla), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 250,
          decoration: const BoxDecoration(
            gradient: MyColors.transparentOverlayBottomTop,
          ),
        ),
        const Positioned(
          top: 10,
          left: 10,
          child: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                        "Watch Movie",
                        style: themeData.textTheme.headline5,
                      ),
                      Text(
                        "2hr 9 min",
                        style: themeData.textTheme.headline6,
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.volume_mute_rounded,
                size: 30,
              )
            ],
          ),
        )
      ],
    );
  }
}
