import 'package:flutter/material.dart';
import 'package:mayfai_app/Component/HomeComponent/activity.dart';
import 'package:mayfai_app/Component/HomeComponent/discover.dart';
import 'package:mayfai_app/Component/HomeComponent/finance.dart';
import 'package:mayfai_app/app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int selectedIndex = 0;
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
        MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: MayfaiAppBar(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: bodyWidth,
            height: bodyHeight * 1.065,
            child: Column(
              children: [Activity(), FinanceInformation(), DiscoverList()],
            ),
          ),
        )),
      ),
    );
  }
}
