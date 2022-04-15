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
      discoverDescription: "Peningkatan pesat terjadi dibeberapa perusahaan ",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 20,
      ),
      time: "4 Jam yang Lalu"),
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage3.png",
      discoverTitle:
          "NFT digemari oleh semua kalangan, akankah terus seperti itu?",
      discoverDescription:
          "NFT umumnya adalah berkas yang diunggah ke pasar lelang",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 20,
      ),
      time: "5 Jam yang Lalu"),
];

var financialDiscoverList = [
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage4.png",
      discoverTitle: "Cara Raditya Dika mengatur finansial diwaktu muda",
      discoverDescription:
          "Raditya Dika merupakan penulis yang saat ini gemar memberi informasi terkait investasi",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 15,
      ),
      time: "1 Jam yang Lalu"),
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage5.png",
      discoverTitle:
          "Bagaimana kemajuan masyarakat Indonesia memahami Finansial?",
      discoverDescription:
          "Literasi finansial sangat rendah, masyarakat indonesia kini gemar mengikutri seminar...",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 15,
      ),
      time: "2 Jam yang Lalu"),
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage6.png",
      discoverTitle: "Memanfaatkan Gadget untuk mencari pasif Income!",
      discoverDescription:
          "Beberapa  cara yang dapat kamu lakukan dalam mendapatkan pasif income",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 15,
      ),
      time: "6 Jam yang Lalu"),
];

var economyDiscoverList = [
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
      imageURL: "Images/DiscoverImage/discoverImage5.png",
      discoverTitle:
          "Bagaimana kemajuan masyarakat Indonesia memahami Finansial?",
      discoverDescription:
          "Literasi finansial sangat rendah, masyarakat indonesia kini gemar mengikutri seminar...",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 15,
      ),
      time: "2 Jam yang Lalu"),
  DiscoverModel(
      imageURL: "Images/DiscoverImage/discoverImage3.png",
      discoverTitle:
          "NFT digemari oleh semua kalangan, akankah terus seperti itu?",
      discoverDescription:
          "NFT umumnya adalah berkas yang diunggah ke pasar lelang",
      icon: const Iconify(
        Carbon.time,
        color: Colors.blue,
        size: 20,
      ),
      time: "5 Jam yang Lalu"),
];
