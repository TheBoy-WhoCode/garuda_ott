import 'package:flutter/material.dart';

class MyColors {
  // Colors
  static const Color primaryButtonColor = Color(0xFFE81913);
  static const Color primaryFontColor = Colors.white;
  static const Color scaffoldColor = Color(0xFF0A0B0F);
  static const Color pannelColor = Colors.black;
  static const Color secondaryButtonColor = Color(0xFF270202);
  static const Color buttonBorderColor = Color(0xFF710000);
  static const Color inputBorderColor = Color(0xFF727272);
  static const Color appBarColor = Color(0xFF0A0B0f);
  static const Color textButtonColor = Color(0xFFE81913);
  static const Color scaffoldBottom = Color(0xFF071021);
  static const Color crownColor = Color(0xFFDB9C32);
  static Color cardColor = Colors.grey.withOpacity(0.09);

  // Material Colors
  static const Map<int, Color> whiteShade = {
    50: Color.fromRGBO(255, 255, 255, .1),
    100: Color.fromRGBO(255, 255, 255, .2),
    200: Color.fromRGBO(255, 255, 255, .3),
    300: Color.fromRGBO(255, 255, 255, .4),
    400: Color.fromRGBO(255, 255, 255, .5),
    500: Color.fromRGBO(255, 255, 255, .6),
    600: Color.fromRGBO(255, 255, 255, .7),
    700: Color.fromRGBO(255, 255, 255, .8),
    800: Color.fromRGBO(255, 255, 255, .9),
    900: Color.fromRGBO(255, 255, 255, 1),
  };

  static const MaterialColor primarySwatch =
      MaterialColor(0xFFFFFFFF, whiteShade);

  // Gradient Colors
  static const LinearGradient scaffoldGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF0A0B0F), Color(0xFF05132D)],
  );

  static const LinearGradient transparentOverlayTopBottom = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.black, Colors.transparent],
  );

  static LinearGradient transparentOverlayBlackBottomTop = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [scaffoldBottom.withOpacity(0.9), Colors.transparent],
  );

  static const LinearGradient transparentOverlayBottomTop = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [scaffoldBottom, Colors.transparent],
  );
}
