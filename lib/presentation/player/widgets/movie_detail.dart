import 'package:flutter/material.dart';
import 'package:garuda_ott/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReadMoreText(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",
            style: themeData.textTheme.subtitle1,
            trimLines: 2,
            trimMode: TrimMode.LINE,
            trimCollapsedText: 'Read more',
            trimExpandedText: ' Read less',
            moreStyle:
                GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
            lessStyle:
                GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Starring",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " : ",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Hero name, Heroine name",
                      style: themeData.textTheme.subtitle1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Director",
                      style: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " : ",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Director name",
                      style: themeData.textTheme.subtitle1,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
