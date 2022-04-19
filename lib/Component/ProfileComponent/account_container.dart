import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Component/Page%20Transition/slide_transition.dart';
import 'package:mayfai_app/Screens/Activity%20Screen/activity_screen.dart';
import 'package:mayfai_app/Screens/Wallet%20Screen/wallet_screen.dart';
import 'package:mayfai_app/app_bar.dart';

class AccountContainer extends StatelessWidget {
  const AccountContainer({Key? key}) : super(key: key);

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
      margin: EdgeInsets.only(bottom: bodyHeight * 0.02),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account",
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ),
          ListTile(
            title: Text(
              "Kelola Akun",
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
            onTap: () {
              Navigator.push(
                  context, SlideRightRoute(page: const WalletScreen()));
            },
            title: Text(
              "Pemasukan dan Pengeluaran",
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
            onTap: () {
              Navigator.push(
                  context, SlideRightRoute(page: const ActivityScreen()));
            },
            title: Text(
              "List Kegiatan",
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
              "Save For",
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
