// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class TempAdd extends StatelessWidget {
  const TempAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: TextTitle(
            title: "27°",
            fontStyle: "RobotoBlack",
            size: 35,
            colortext: textColorBlack,
          ),
        ),
        Container(
          width: 90,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(90, 0, 0, 0),
                  blurRadius: 6,
                  offset: Offset(0, 6),
                )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: iconmenu, shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  color: textColorW,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
