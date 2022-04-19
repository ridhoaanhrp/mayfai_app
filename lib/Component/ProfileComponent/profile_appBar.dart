import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:mayfai_app/app_bar.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Iconify(
            Bx.left_arrow_alt,
            color: Colors.white,
            size: 45,
          ),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              fixedSize: const Size.fromRadius(25)),
        ),
        Container(
          width: bodyWidth * 0.15,
          height: bodyHeight * 0.085,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(colors: [
                Color(0xFF6DBFFA),
                Color.fromARGB(255, 29, 156, 240)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
              child: Image.asset(
            "Images/ProfileScreen/logoMayfai2.png",
            fit: BoxFit.cover,
          )),
        )
      ],
    );
  }
}
