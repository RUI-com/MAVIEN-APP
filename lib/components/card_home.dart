// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class CardHome extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;
  const CardHome(
      {super.key, required this.image, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Stack(
          children: [
            Container(
              width: 130,
              height: 260,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              width: 130,
              height: 260,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(108, 0, 0, 0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextTitle(
                title: text,
                fontStyle: "RobotoRegular",
                size: 16,
                colortext: textColorW,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
