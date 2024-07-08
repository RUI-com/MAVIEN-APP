// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list_itemp.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 540,
      decoration: BoxDecoration(
        color: sidebarBackgroung,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
      ),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //close button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ],
            ),
            // profile
            Row(
              children: [
                //avatar
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/avatar/profile-im.png"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle),
                        )),
                  ],
                ),
                //text & button
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextTitle(
                          title: "Hi Vaishali",
                          fontStyle: "RobotoBlack",
                          size: 18,
                          colortext: textColorW),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextTitle(
                                  title: "Edit Profile",
                                  fontStyle: "RobotoBlack",
                                  size: 12,
                                  colortext: textColorW),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            //list
            ListItemp(
                image: "assets/icon/manage-users.svg",
                title: "Manage Users",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 20,
            ),
            ListItemp(
                image: "assets/icon/devices.svg",
                title: "Devices",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 20,
            ),
            ListItemp(
                image: "assets/icon/rooms.svg",
                title: "Rooms",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 20,
            ),
            ListItemp(
                image: "assets/icon/music.svg",
                title: "Music",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 20,
            ),
            ListItemp(
                image: "assets/icon/settings.svg",
                title: "Settings",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 20,
            ),
            ListItemp(
                image: "assets/icon/help.svg",
                title: "Help",
                fontStyle: "RobotoRegular"),
            SizedBox(
              height: 80,
            ),
            ListItemp(
                image: "assets/icon/logout.svg",
                title: "Logout",
                fontStyle: "RobotoBlack"),
          ],
        ),
      ),
    );
  }
}
