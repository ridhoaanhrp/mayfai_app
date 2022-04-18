import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:mayfai_app/Component/HomeComponent/finance.dart';
import 'package:mayfai_app/Component/Page%20Transition/slide_transition.dart';
import 'package:mayfai_app/Component/WalletComponent/financial_records.dart';
import 'package:mayfai_app/Component/WalletComponent/wallet_title_screen.dart';
import 'package:mayfai_app/app_bar.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        MayfaiAppBar().preferredSize.height -
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
                  WalletTitleScreen(),
                  FinanceInformation(),
                  FinancialRecords()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
