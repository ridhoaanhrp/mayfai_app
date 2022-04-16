import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:mayfai_app/app_bar.dart';

class ActivityTitleScreen extends StatelessWidget {
  const ActivityTitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.15,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.02,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activity",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
                const Iconify(Bi.calendar_date_fill)
              ],
            ),
          ),
          Expanded(
            child: Text(
              "Informasi mengenai kegiatan keseharian kamu!",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ),
          )
        ],
      ),
    );
  }
}
