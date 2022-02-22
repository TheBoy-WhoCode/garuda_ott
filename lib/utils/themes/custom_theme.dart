import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get customTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: MyColors.primarySwatch,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      primaryColor: MyColors.scaffoldColor,
      scaffoldBackgroundColor: MyColors.scaffoldColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
          fontSize: 26,
          color: MyColors.primaryFontColor,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 24,
          color: MyColors.primaryFontColor,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 22,
          color: MyColors.primaryFontColor,
        ),
        headline4: GoogleFonts.openSans(
          fontSize: 20,
          color: MyColors.primaryFontColor,
        ),
        headline5: GoogleFonts.openSans(
          fontSize: 18,
          color: MyColors.primaryFontColor,
        ),
        headline6: GoogleFonts.openSans(
          fontSize: 16,
          color: MyColors.primaryFontColor,
        ),
        subtitle1: GoogleFonts.openSans(
          fontSize: 18,
          color: MyColors.primaryFontColor,
        ),
        subtitle2: GoogleFonts.openSans(
          fontSize: 18,
          color: MyColors.primaryFontColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: GoogleFonts.openSans(
          fontSize: 16,
          color: MyColors.primaryFontColor,
        ),
        errorStyle: GoogleFonts.openSans(
          fontSize: 16,
          color: MyColors.primaryButtonColor,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.inputBorderColor),
        ),
      ),
      // buttonTheme: ButtonThemeData(
      //   buttonColor: MyColors.primaryButtonColor,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      // ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryButtonColor,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(color: MyColors.appBarColor),
    );
  }
}
