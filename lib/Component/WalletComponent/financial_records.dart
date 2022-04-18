import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:mayfai_app/Component/WalletComponent/TabBarView/tab_bar_view_pemasukan.dart';
import 'package:mayfai_app/Component/WalletComponent/TabBarView/tab_bar_view_pengeluaran.dart';
import 'package:mayfai_app/Component/WalletComponent/TabBarView/tab_bar_view_statistik.dart';
import 'package:mayfai_app/app_bar.dart';

class FinancialRecords extends StatefulWidget {
  const FinancialRecords({Key? key}) : super(key: key);

  @override
  _FinancialRecordsState createState() => _FinancialRecordsState();
}

class _FinancialRecordsState extends State<FinancialRecords> {
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
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TabBar(
                          labelColor: Color(0xFF20A0FD),
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
                            Tab(
                              text: "Statistik",
                            )
                          ]),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: bodyWidth,
                        height: bodyHeight * 0.4,
                        child: const TabBarView(
                          children: [
                            TabBarPemasukan(),
                            TabBarPengeluaran(),
                            TabBarStatistik()
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
