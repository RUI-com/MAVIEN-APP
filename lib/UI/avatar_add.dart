// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/avatar.dart';
import 'package:flutter_application_1/theme/colors.dart';

class AvatarAdd extends StatelessWidget {
  const AvatarAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(45, 0, 0, 0),
                  blurRadius: 10,
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
              Avatar(image: "assets/avatar/1.png"),
              Avatar(image: "assets/avatar/2.png"),
              Avatar(image: "assets/avatar/3.png"),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(155, 250, 209, 176),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  color: textColorBlack,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
