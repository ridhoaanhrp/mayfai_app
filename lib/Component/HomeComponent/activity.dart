import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:mayfai_app/Model/activity_model.dart';
import 'package:mayfai_app/app_bar.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.3,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.05,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aktivitas Anda",
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
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saat Ini",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ),
                    Text(
                      "12:09 WIB",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activityList.length,
                itemBuilder: ((context, index) {
                  final ActivityModel activityModel = activityList[index];
                  return InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: bodyWidth * 0.6,
                            height: bodyHeight * 0.17,
                            padding: EdgeInsets.symmetric(
                                horizontal: bodyWidth * 0.03),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: activityModel.bgColor,
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topCenter),
                                border: Border(
                                    left: BorderSide(
                                        color: activityModel.sideColor,
                                        width: 15))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    activityModel.icon,
                                    SizedBox(
                                      width: bodyWidth * 0.03,
                                    ),
                                    Text(
                                      activityModel.activityTitle,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      activityModel.place,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    SizedBox(
                                      width: bodyWidth * 0.03,
                                    ),
                                    Text(
                                      activityModel.time,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ],
                                ),
                                Text(
                                  activityModel.activityDescription,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                )
                              ],
                            ),
                          ),
                        )),
                  );
                })),
          )
        ],
      ),
    );
  }
}
