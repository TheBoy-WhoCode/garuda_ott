import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/assets/assets.dart';
import 'package:garuda_ott/utils/themes/colors.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          MyColors.transparentOverlay.createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.loginBackground),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
