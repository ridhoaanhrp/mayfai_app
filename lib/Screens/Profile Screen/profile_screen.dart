import 'package:flutter/material.dart';
import 'package:mayfai_app/Component/ProfileComponent/about_us_container.dart';
import 'package:mayfai_app/Component/ProfileComponent/account_container.dart';
import 'package:mayfai_app/Component/ProfileComponent/avatar_user.dart';
import 'package:mayfai_app/Component/ProfileComponent/profile_appBar.dart';
import 'package:mayfai_app/app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: bodyWidth,
            padding: EdgeInsets.only(
                top: bodyHeight * 0.02,
                left: bodyWidth * 0.03,
                right: bodyWidth * 0.03),
            child: Column(
              children: const [
                ProfileAppBar(),
                UserAvatar(),
                AccountContainer(),
                AboutUsContainer()
              ],
            ),
          ),
        )),
      ),
    );
  }
}
