// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItemp extends StatelessWidget {
  final String image;
  final String title;
  final String fontStyle;
  const ListItemp(
      {super.key,
      required this.image,
      required this.title,
      required this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
          color: Colors.white,
          width: 20,
        ),
        SizedBox(
          width: 10,
        ),
        TextTitle(
            title: title,
            fontStyle: fontStyle,
            size: 16,
            colortext: textColorW),
      ],
    );
  }
}
