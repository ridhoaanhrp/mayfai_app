import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';

class DiscoverModel {
  String imageURL;
  String discoverTitle;
  String discoverDescription;
  Widget icon;
  String time;

  DiscoverModel(
      {required this.imageURL,
      required this.discoverTitle,
      required this.discoverDescription,
      required this.icon,
      required this.time});
}

var discoverList = [
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage1.png",
      discoverTitle: "IHSG Mengalami Koreksi Selama Seminggu Lebih",
      discoverDescription:
          "Terjadi koreksi yang dialami selama kurang lebih seminggu",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 15,
      ),
      time: "2 Jam yang Lalu"),
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage2.png",
      discoverTitle: "Pasar Saham Kembali Mengalami Peningkatan",
      discoverDescription:
          "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 20,
      ),
      time: "4 Jam yang Lalu")
];
