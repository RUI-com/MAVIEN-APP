// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          shape: BoxShape.circle),
    );
  }
}
