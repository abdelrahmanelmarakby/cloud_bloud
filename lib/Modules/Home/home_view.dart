import 'package:animations/animations.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:cloud_bloud/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ProfileScreen/profile_view.dart';
import '../Seeker/search_donor_view.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawer(),
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
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Container(
            height: Get.height * .92,
            width: Get.width,
            child: Column(
              children: [
                Expanded(
                    child: OpenContainer(
                  closedBuilder: (context, action) => Container(
                    width: Get.width,
                    color: primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/search.png",
                          height: Get.height / 2,
                        ),
                        Txt(
                          title: "Search for a donor",
                          color: Colors.white,
                          isBold: true,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  openBuilder: (BuildContext context,
                      void Function({Object? returnValue}) action) {
                    return SeekerSearch();
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
