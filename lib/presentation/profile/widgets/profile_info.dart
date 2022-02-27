import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'dart:math' as math;

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: MyColors.cardColor,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    foregroundColor: MyColors.scaffoldBottom,
                    child: ClipRRect(
                      child: Icon(
                        CupertinoIcons.person_fill,
                        size: 70,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 150,
                    child: Transform.rotate(
                      angle: 330 * math.pi / 180,
                      child: const FaIcon(
                        FontAwesomeIcons.crown,
                        size: 30,
                        color: MyColors.crownColor,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Jiten Patel",
                style: themeData.textTheme.headline1,
              ),
              Text(
                "Premium",
                style: themeData.textTheme.headline4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
