import 'package:animations/animations.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:cloud_bloud/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ProfileScreen/profile_view.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12),
              child: OpenContainer(
                closedElevation: 0,
                openBuilder: (BuildContext context,
                    void Function({Object? returnValue}) action) {
                  return ProfileScreen();
                },
                closedBuilder: (BuildContext context, void Function() action) {
                  return CircleAvatar(
                      backgroundColor: accentColor,
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                      ));
                },
              ))
        ],
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Cloud",
                style: GoogleFonts.cairo(
                    color: accentColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "Blood",
                style: GoogleFonts.cairo(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: OpenContainer(
            closedBuilder: (context, action) => Container(
              width: Get.width,
              height: Get.height,
              color: accentColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("Accept_request.gif"),
                  Txt(
                    title: "Accept requests",
                    color: Colors.white,
                    isBold: true,
                    size: 18,
                  )
                ],
              ),
            ),
            openBuilder: (BuildContext context,
                void Function({Object? returnValue}) action) {
              return Scaffold();
            },
          )),
          Expanded(
              child: OpenContainer(
            closedBuilder: (context, action) => Container(
              width: Get.width,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("People_search.gif"),
                  Txt(
                    title: "Search for a donor",
                    color: Colors.white,
                    isBold: true,
                    size: 18,
                  )
                ],
              ),
            ),
            openBuilder: (BuildContext context,
                void Function({Object? returnValue}) action) {
              return Scaffold();
            },
          )),
        ],
      ),
    );
  }
}
