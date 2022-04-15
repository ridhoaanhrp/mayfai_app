import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/app_bar.dart';

class NewsOfToday extends StatelessWidget {
  const NewsOfToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.35,
      padding: EdgeInsets.only(
          top: bodyHeight * 0, left: bodyWidth * 0.05, right: bodyWidth * 0.05),
      child: Container(
        width: bodyWidth * 0.6,
        height: bodyHeight * 0.2,
        padding: EdgeInsets.only(
            top: bodyHeight * 0.05,
            left: bodyWidth * 0.07,
            right: bodyWidth * 0.07),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("Images/DiscoverImage/newsOfTodayImage.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: bodyWidth * 0.3,
                    height: bodyHeight * 0.04,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "News of Today",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "IHSG Dibuka Menguat ke 6.517, Eh Nggak Lama Turun Lagi!",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Read More >",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
