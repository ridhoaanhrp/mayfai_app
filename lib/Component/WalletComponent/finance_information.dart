import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:mayfai_app/Component/HomeComponent/finance.dart';
import 'package:mayfai_app/app_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FinanceInformation extends StatefulWidget {
  const FinanceInformation({Key? key}) : super(key: key);

  @override
  _FinanceInformationState createState() => _FinanceInformationState();
}

class _FinanceInformationState extends State<FinanceInformation> {
  List<ChartData> chartData = [
    ChartData(nameUser: "Danny", percent: 50, color: const Color(0xFF20A0FD)),
    ChartData(nameUser: "Danny", percent: 50, color: const Color(0xFFFFFFFF))
  ];
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.3,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.02,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Text(
            "Informasi Keuangan",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Expanded(
            flex: 3,
            child: Stack(children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: bodyWidth * 0.9,
                  height: bodyHeight * 0.2,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFFFFFFF),
                        Color.fromARGB(255, 255, 205, 205),
                        Color.fromARGB(255, 252, 218, 218)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SfCircularChart(
                          annotations: <CircularChartAnnotation>[
                            CircularChartAnnotation(
                                widget: Container(
                                    child: PhysicalModel(
                              child: Container(),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ))),
                            CircularChartAnnotation(
                                widget: Container(
                              child: Text(
                                "50%",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ))
                          ],
                          series: [
                            DoughnutSeries<ChartData, String>(
                                dataSource: chartData,
                                pointColorMapper: (ChartData data, _) =>
                                    data.color,
                                xValueMapper: (ChartData data, _) =>
                                    data.nameUser,
                                yValueMapper: (ChartData data, _) =>
                                    data.percent)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Keuangan Saat Ini",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Text(
                                  "Rp 2.220.000",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Total Pengeluaran",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Text(
                                  "Rp 1.011.000",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: bodyWidth * -0.034,
                bottom: bodyHeight * 0.003,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Iconify(
                    Carbon.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                ),
              )
            ]))
      ]),
    );
  }
}
