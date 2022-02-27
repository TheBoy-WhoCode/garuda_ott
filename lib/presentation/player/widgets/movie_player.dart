import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MoviePlayer extends StatefulWidget {
  const MoviePlayer({
    Key? key,
  }) : super(key: key);

  @override
  State<MoviePlayer> createState() => _MoviePlayerState();
}

class _MoviePlayerState extends State<MoviePlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(Assets.sintelVideoUrl)
      ..initialize().then((_) {
        // _controller.setLooping(true);
        // _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
        logger.d("PLAY");
      },
      child: _controller.value.isPlaying
          ? Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  child: VideoPlayer(_controller),
                ),
                IconButton(
                  onPressed: () {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                    setState(() {});
                  },
                  icon: _controller.value.isPlaying
                      ? const Icon(
                          Icons.pause,
                          size: 50,
                        )
                      : const Icon(
                          Icons.play_arrow,
                          size: 50,
                        ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                ),
              ],
            )
          : Stack(
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
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
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
            ),
    );
  }
}
