import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/app_bar.dart';

class AboutUsContainer extends StatelessWidget {
  const AboutUsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth * 0.8,
      height: bodyHeight * 0.4,
      padding: EdgeInsets.only(
        top: bodyHeight * 0.02,
        left: bodyWidth * 0.07,
        right: bodyWidth * 0.07,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Us",
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ),
          ListTile(
            title: Text(
              "MAYFAI Contacts",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Divider(
            height: bodyHeight * 0.01,
            color: const Color(0xFFB0B0B0),
          ),
          ListTile(
            title: Text(
              "MAYFAI Help",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Divider(
            height: bodyHeight * 0.01,
            color: const Color(0xFFB0B0B0),
          ),
          ListTile(
            title: Text(
              "Find Us",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Divider(
            height: bodyHeight * 0.01,
            color: const Color(0xFFB0B0B0),
          ),
          ListTile(
            title: Text(
              "Terms and Condition",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Divider(
            height: bodyHeight * 0.01,
            color: const Color(0xFFB0B0B0),
          ),
        ],
      ),
    );
  }
}
