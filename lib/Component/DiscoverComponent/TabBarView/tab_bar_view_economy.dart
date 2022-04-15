import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Model/discover_model.dart';
import 'package:mayfai_app/app_bar.dart';

class TabBarViewEconomy extends StatefulWidget {
  const TabBarViewEconomy({Key? key}) : super(key: key);

  @override
  _TabBarViewEconomyState createState() => _TabBarViewEconomyState();
}

class _TabBarViewEconomyState extends State<TabBarViewEconomy> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        const MayfaiAppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
        itemCount: economyDiscoverList.length,
        itemBuilder: ((context, index) {
          final DiscoverModel discoverModel = economyDiscoverList[index];
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
                        padding: EdgeInsets.only(top: bodyHeight * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              children: [
                                discoverModel.icon,
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
        }));
  }
}
