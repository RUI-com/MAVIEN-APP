// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/devices_list.dart';
import 'package:flutter_application_1/components/text_title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/home/1.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //appBar
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 94, 79, 66).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: textColorW,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 94, 79, 66).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.settings_outlined,
                      color: textColorW,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 79, 66).withOpacity(0.6),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //heade
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //title
                            TextTitle(
                              title: "Living Room",
                              fontStyle: "RobotoBlack",
                              size: 30,
                              colortext: textColorW,
                            ),
                            //switch
                            FlutterSwitch(
                              width: 40.0,
                              height: 25.0,
                              toggleSize: 20.0,
                              value: status,
                              borderRadius: 30.0,
                              padding: 3.0,
                              activeColor: switchrec,
                              activeToggleColor: switchelip,
                              showOnOff: false,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //descreption
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: TextTitle(
                          title:
                              "Your lovoing room is connected with\n5 devices an 2 users have access for\nliving room.",
                          fontStyle: "RobotoRegular",
                          size: 15,
                          colortext: textColorW,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //wether
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          children: [
                            TextTitle(
                              title: "27°",
                              fontStyle: "RobotoBlack",
                              size: 30,
                              colortext: textColorW,
                            ),
                            SvgPicture.asset(
                              "assets/icon/wether.svg",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextTitle(
                                title: "Devices",
                                fontStyle: "RobotoRegular",
                                size: 20,
                                colortext: textColorW),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: textColorW,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //list
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            DevicesList(
                                icon: "assets/icon/Wifi.svg",
                                title: "WiFi",
                                switchb: "On"),
                            SizedBox(
                              width: 5,
                            ),
                            DevicesList(
                                icon: "assets/icon/light.svg",
                                title: "Light",
                                switchb: "On"),
                            SizedBox(
                              width: 5,
                            ),
                            DevicesList(
                                icon: "assets/icon/temp.svg",
                                title: "Temp",
                                switchb: "On"),
                            SizedBox(
                              width: 5,
                            ),
                            DevicesList(
                                icon: "assets/icon/fan.svg",
                                title: "Fan",
                                switchb: "On"),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
