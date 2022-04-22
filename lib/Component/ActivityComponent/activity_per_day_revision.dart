import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:mayfai_app/Model/activity_model.dart';
import 'package:mayfai_app/app_bar.dart';

class ActivityPerDay extends StatelessWidget {
  const ActivityPerDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.8,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.02,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                top: bodyHeight * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jadwal Hari ini",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    "Senin, 20 Apr",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: activityList.length,
                  itemBuilder: (context, index) {
                    final ActivityModel activityModel = activityList[index];
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        child: Container(
                          width: bodyWidth,
                          height: bodyHeight * 0.08,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFEDED),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: bodyWidth * 0.1,
                                  height: bodyHeight * 0.1,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFC8C8),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Iconify(
                                      Bi.calendar_check_fill,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: bodyWidth * 0.03,
                                      right: bodyWidth * 0.03),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        activityModel.activityTitle,
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                fontSize: 8,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              activityModel.status,
                                              style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                            ),
                                            Text(
                                              activityModel.time,
                                              style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            )
                                          ])
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                top: bodyHeight * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jadwal Lainnya",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    "Selasa, 21 Apr",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ),
          Flexible(
              flex: 6,
              child: ListView.builder(
                  itemCount: activityList.length,
                  itemBuilder: (context, index) {
                    final ActivityModel activityModel = activityList[index];
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        child: Container(
                          width: bodyWidth,
                          height: bodyHeight * 0.08,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFEDFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: bodyWidth * 0.1,
                                  height: bodyHeight * 0.1,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFC9C8FF),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Iconify(
                                      Bi.calendar_check_fill,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: bodyWidth * 0.03,
                                      right: bodyWidth * 0.03),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        activityModel.activityTitle,
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                fontSize: 8,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              activityModel.status,
                                              style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                            ),
                                            Text(
                                              activityModel.time,
                                              style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            )
                                          ])
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
