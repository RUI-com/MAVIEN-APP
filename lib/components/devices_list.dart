// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DevicesList extends StatelessWidget {
  final String icon;
  final String title;
  final String switchb;
  const DevicesList(
      {super.key,
      required this.icon,
      required this.title,
      required this.switchb});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: scrollrec, borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(shape: BoxShape.circle, color: switchrec),
            child: SvgPicture.asset(
              icon,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextTitle(
              title: title,
              fontStyle: "RobotoRegular",
              size: 20,
              colortext: textColorW),
          SizedBox(
            height: 5,
          ),
          TextTitle(
              title: switchb,
              fontStyle: "RobotoRegular",
              size: 16,
              colortext: textColorW),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
