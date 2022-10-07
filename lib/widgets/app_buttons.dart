import 'package:flutter/material.dart';
import 'package:travelapp/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  final Color bordercolor;
  double size;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons(
      {Key? key,
      this.text = "hi",
      this.icon,
      this.isIcon = false,
      required this.size,
      required this.color,
      required this.backgroundcolor,
      required this.bordercolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          border: Border.all(color: bordercolor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundcolor),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
