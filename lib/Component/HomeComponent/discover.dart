import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Model/discover_model.dart';
import 'package:mayfai_app/app_bar.dart';

class DiscoverList extends StatefulWidget {
  const DiscoverList({Key? key}) : super(key: key);

  @override
  _DiscoverListState createState() => _DiscoverListState();
}

class _DiscoverListState extends State<DiscoverList> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.4,
      padding: EdgeInsets.only(
          top: bodyHeight * 0.02,
          left: bodyWidth * 0.05,
          right: bodyWidth * 0.05),
      child: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Baru-Baru Ini",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lihat Lainnya",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.normal)),
                ),
              )
            ],
          )),
          Expanded(
              flex: 3,
              child: ListView.builder(
                  itemCount: discoverList.length,
                  itemBuilder: ((context, index) {
                    final DiscoverModel discoverModel = discoverList[index];
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(discoverModel.imageURL)),
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: bodyHeight * 0.02),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        discoverModel.discoverTitle,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Text(
                                        discoverModel.discoverDescription,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 8,
                                          color: Colors.black,
                                        )),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          discoverModel.icon,
                                          SizedBox(
                                            width: bodyWidth * 0.01,
                                          ),
                                          Text(
                                            discoverModel.time,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 8,
                                              color: Colors.blue,
                                            )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  })))
        ],
      ),
    );
  }
}
