// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/avatar_add.dart';
import 'package:flutter_application_1/UI/temp_add.dart';
import 'package:flutter_application_1/UI/wellcome_text.dart';
import 'package:flutter_application_1/components/card_home.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/screen/nav_bar.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.only(left: 30),
              child: SvgPicture.asset(
                "assets/icon/menu.svg",
              ),
            ),
          );
        }),
      ),
      drawer: NavBar(),
      body: ListView(
        children: [
          // temp + add
          TempAdd(),
          //wellcome text
          WellcomeText(),
          // avatar add
          AvatarAdd(),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextTitle(
                        title: "All Rooms",
                        fontStyle: "RobotoBlack",
                        size: 20,
                        colortext: textColorBlack),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: iconbrownl,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //card list
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardHome(
                  text: "Living Room",
                  image: "assets/home/1.png",
                  onTap: () {
                    Navigator.pushNamed(context, '/livingroom');
                  },
                ),
                CardHome(text: "Kitchen", image: "assets/home/2.png"),
                CardHome(text: "Living Room", image: "assets/home/3.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
