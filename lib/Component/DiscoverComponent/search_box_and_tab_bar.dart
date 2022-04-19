import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:mayfai_app/Component/DiscoverComponent/TabBarView/tab_bar_view_economy.dart';
import 'package:mayfai_app/Component/DiscoverComponent/TabBarView/tab_bar_view_financial.dart';
import 'package:mayfai_app/Component/DiscoverComponent/TabBarView/tab_bar_view_popular.dart';
import 'package:mayfai_app/app_bar.dart';

class OtherNews extends StatefulWidget {
  const OtherNews({Key? key}) : super(key: key);

  @override
  _OtherNewsState createState() => _OtherNewsState();
}

class _OtherNewsState extends State<OtherNews>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    tabController =
        TabController(length: 3, initialIndex: selectedIndex, vsync: this);
    tabController.addListener(handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.6,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.02,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF20A0FD))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF20A0FD))),
              prefixIcon: const Iconify(
                Bx.search,
                color: Color(0xFF20A0FD),
              ),
              hintText: "Search",
              hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF89CDFF),
                      fontWeight: FontWeight.w600)),
            ),
          ),
          DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TabBar(
                      labelColor: const Color(0xFF20A0FD),
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF89CDFF),
                              fontWeight: FontWeight.bold)),
                      tabs: const [
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Financial",
                        ),
                        Tab(
                          text: "Economy",
                        )
                      ]),
                  Container(
                    width: bodyWidth,
                    height: bodyHeight * 0.44,
                    child: const TabBarView(
                      children: [
                        TabBarViewPopular(),
                        TabBarViewFinancial(),
                        TabBarViewEconomy()
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
