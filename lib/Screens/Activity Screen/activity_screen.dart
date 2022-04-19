import 'package:flutter/material.dart';
import 'package:mayfai_app/Component/ActivityComponent/activity_list.dart';
import 'package:mayfai_app/Component/ActivityComponent/activity_per_day.dart';
import 'package:mayfai_app/Component/ActivityComponent/activity_title_screen.dart';
import 'package:mayfai_app/app_bar.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  PageController pageController = PageController();
  int selectedIndex = 2;
  void navBarTap(int index) {
    setState(() {
      selectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.bounceOut);
    });
  }

  void pageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const MayfaiAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: bodyWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ActivityTitleScreen(),
                  ActivityList(),
                  ActivityPerDay()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
