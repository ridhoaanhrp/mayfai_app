import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Component/WalletComponent/TabBarView/tab_bar_view_pemasukan_revision.dart';
import 'package:mayfai_app/Component/WalletComponent/TabBarView/tab_bar_view_pengeluaran_revision.dart';
import 'package:mayfai_app/app_bar.dart';

class FinancialRecords extends StatefulWidget {
  const FinancialRecords({Key? key}) : super(key: key);

  @override
  _FinancialRecordsState createState() => _FinancialRecordsState();
}

class _FinancialRecordsState extends State<FinancialRecords>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    tabController =
        TabController(length: 2, initialIndex: selectedIndex, vsync: this);
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
      height: bodyHeight * 0.55,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.03,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              "Catatan Keuangan",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          Expanded(
            flex: 7,
            child: DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TabBar(
                          labelColor: const Color(0xFF20A0FD),
                          unselectedLabelColor: Colors.grey,
                          labelStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF89CDFF),
                                  fontWeight: FontWeight.bold)),
                          tabs: const [
                            Tab(
                              text: "Pemasukan",
                            ),
                            Tab(
                              text: "Pengeluaran",
                            ),
                          ]),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: bodyWidth,
                        height: bodyHeight * 0.4,
                        child: const TabBarView(
                          children: [
                            TabBarViewPemasukan(),
                            TabBarViewPengeluaran()
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
