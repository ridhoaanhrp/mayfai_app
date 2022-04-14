import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class MayfaiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MayfaiAppBar({Key? key}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 85);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.white,
      shadowColor: const Color(0xFF89CDFF),
      elevation: 7,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
      toolbarHeight: 200,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          CircleAvatar(
            child: Image.asset("Images/AppBar/avatar.png"),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.black),
                  )),
              Text(
                "Danny!",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              )
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Iconify(
              Ic.baseline_notifications,
              color: Color(0xFF20A0FD),
              size: 35,
            ))
      ],
    );
  }
}
