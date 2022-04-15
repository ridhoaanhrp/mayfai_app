import 'package:flutter/material.dart';
import 'package:mayfai_app/Component/DiscoverComponent/news_of_today.dart';
import 'package:mayfai_app/Component/DiscoverComponent/popular_news.dart';
import 'package:mayfai_app/Component/DiscoverComponent/search_box_and_tab_bar.dart';
import 'package:mayfai_app/Component/DiscoverComponent/title_screen.dart';
import 'package:mayfai_app/app_bar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  PageController pageController = PageController();
  int selectedIndex = 1;
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
                  children: [
                    TitleScreen(),
                    NewsOfToday(),
                    PopularNews(),
                    OtherNews()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
