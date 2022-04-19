import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/app_bar.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: bodyHeight * 0.03,
          left: bodyWidth * 0.1,
          right: bodyWidth * 0.1,
          bottom: bodyHeight * 0.03),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset("Images/AppBar/avatar.png"),
          ),
          SizedBox(
            width: bodyWidth * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Danny",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: bodyHeight * 0.01,
              ),
              Text(
                "User",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
