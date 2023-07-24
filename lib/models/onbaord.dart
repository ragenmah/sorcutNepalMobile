import 'package:flutter/material.dart';

class OnBoardModel {
  final String title;
  final String image;
  final String desc;
  final IconData iconData;

  OnBoardModel({
    required this.title,
    required this.image,
    required this.desc,
    required this.iconData,
  });
}

List<OnBoardModel> contents = [
  OnBoardModel(
    title: "Classified",
    image: "assets/onboard/classified.png",
    iconData: Icons.class_sharp,
    desc:
        "Buy and sell everything from used cars to mobile phones and computers, or search for property and more in the world.",
  ),
  OnBoardModel(
    title: "Rent",
    image: "assets/onboard/rental.png",
    iconData: Icons.class_sharp,
    desc:
        "But understanding the contributions our colleagues make to our teams and companies.",
  ),
  OnBoardModel(
    title: "Ticketing",
    image: "assets/onboard/ticketing.png",
    iconData: Icons.class_sharp,
    desc:
        "Take control of notifications, collaborate live or on your own time.",
  ),
];
