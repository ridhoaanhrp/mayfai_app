import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class ActivityModel {
  Widget icon;
  Color sideColor;
  List<Color> bgColor;
  String activityTitle;
  String place;
  String time;
  String activityDescription;

  ActivityModel({
    required this.icon,
    required this.sideColor,
    required this.bgColor,
    required this.activityTitle,
    required this.place,
    required this.time,
    required this.activityDescription,
  });
}

var activityList = [
  ActivityModel(
      icon: const Iconify(
        Bi.calendar_check_fill,
        color: Color(0xFFB9C4EA),
      ),
      sideColor: const Color(0xFF949EFF),
      bgColor: const [Color.fromARGB(206, 218, 201, 252), Color(0xFFFFFFFF)],
      activityTitle: "Seminar NFT",
      place: "G.Meet",
      time: "08:30 WIB",
      activityDescription: "Seminar : Lebih Tau Soal NFT"),
  ActivityModel(
      icon: const Iconify(
        Bi.calendar_check_fill,
        color: Color(0xFFF0E89D),
      ),
      sideColor: const Color(0xFFEEE590),
      bgColor: const [Color.fromARGB(255, 250, 255, 210), Color(0xFFFFFFFF)],
      activityTitle: "Kuliah PPL",
      place: "Zoom",
      time: "09:30 WIB",
      activityDescription: "Kuliah PPL Minggu 2"),
];
