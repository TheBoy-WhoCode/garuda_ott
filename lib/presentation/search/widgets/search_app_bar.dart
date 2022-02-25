import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        style: GoogleFonts.openSans(fontSize: 16, color: MyColors.appBarColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search TV shows, movies & videos",
          hintStyle:
              GoogleFonts.openSans(fontSize: 16, color: MyColors.appBarColor),
          prefixIcon: const Icon(
            Icons.arrow_back,
            size: 28,
            color: MyColors.appBarColor,
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: MyColors.appBarColor,
            size: 28,
          ),
        ),
      ),
    );
  }
}
