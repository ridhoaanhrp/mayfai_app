import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:mayfai_app/Model/wallet_model.dart';
import 'package:mayfai_app/app_bar.dart';

class TabBarViewPengeluaran extends StatelessWidget {
  const TabBarViewPengeluaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: bodyHeight * 0.0,
          left: bodyWidth * 0.03,
          right: bodyWidth * 0.03),
      child: ListView.builder(
          itemCount: expenditureList.length,
          itemBuilder: ((context, index) {
            final WalletModel walletModel = expenditureList[index];
            return Container(
              width: bodyWidth * 0.8,
              height: bodyHeight * 0.35,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: bodyHeight * 0.03,
                        left: bodyWidth * 0.03,
                        right: bodyWidth * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          walletModel.date,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Text(
                          "Rp " + walletModel.totalMoney.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF20A0FD),
                                  fontWeight: FontWeight.w500)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: bodyHeight * 0.25,
                    padding: EdgeInsets.only(top: bodyHeight * 0.01),
                    child: ListView(
                        children: walletModel.info
                            .map((e) => InkWell(
                                  onTap: () {},
                                  child: Card(
                                    color: const Color(0xFFEDF7FF),
                                    margin: EdgeInsets.only(
                                        top: bodyHeight * 0.02,
                                        left: bodyWidth * 0.03,
                                        right: bodyWidth * 0.03),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: bodyHeight * 0.07,
                                            width: bodyWidth * 0.16,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFFC8E8FF)),
                                            child: const Center(
                                              child: Iconify(
                                                AkarIcons.minus,
                                                size: 30,
                                                color: Color(0xFF20A0FD),
                                              ),
                                            )),
                                        SizedBox(
                                          width: bodyWidth * 0.03,
                                        ),
                                        Expanded(
                                            flex: 3,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Uang Keluar",
                                                  style: GoogleFonts.montserrat(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 8,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                ),
                                                SizedBox(
                                                  height: bodyHeight * 0.01,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "${e['Info']}",
                                                      style: GoogleFonts.montserrat(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 8,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300)),
                                                    ),
                                                    Text(
                                                      "Rp ${e['Money']}",
                                                      style: GoogleFonts.montserrat(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 8,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300)),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ))
                            .toList()),
                  )
                ],
              ),
            );
          })),
    );
  }
}
