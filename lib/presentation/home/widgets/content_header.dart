import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/logs/logger.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.temp), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: MyColors.transparentOverlayBottomTop,
          ),
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: "List",
                onTap: () => logger.d("My List"),
              ),
              const _PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: "Info",
                onTap: () => logger.d("Info"),
              )
            ],
          ),
          left: 0,
          right: 0,
          bottom: 40,
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
          primary: Colors.black,
          backgroundColor: Colors.white),
      onPressed: () => logger.d("Play"),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
      ),
      label: const Text(
        "Play",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
