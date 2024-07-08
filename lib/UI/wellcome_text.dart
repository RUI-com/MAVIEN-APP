// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class WellcomeText extends StatelessWidget {
  const WellcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(
              title: "Hi Vaishali",
              fontStyle: "RobotoBlack",
              size: 24,
              colortext: textColorBlack),
          TextTitle(
              title: "Welcome to your Smart Home",
              fontStyle: "RobotoRegular",
              size: 16,
              colortext: textColorBrown),
        ],
      ),
    );
  }
}
