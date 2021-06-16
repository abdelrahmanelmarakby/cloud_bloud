import 'package:cloud_bloud/Modules/Seeker/seeker_controller.dart';
import 'package:cloud_bloud/Modules/donorListScreen/donors_screen.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:cloud_bloud/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';

class SeekerSearch extends GetView<SeekerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
            opacity: .5,
            child: Image.asset(
              "assets/pattern.png",
              fit: BoxFit.cover,
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.generalDialog(
                      barrierDismissible: true,
                      barrierLabel: "Search",
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return AlertDialog(
                          scrollable: true,
                          title: Center(
                            child: Txt(
                              title: "Choose location",
                              isBold: true,
                            ),
                          ),
                          content: Container(
                            height: 500,
                            width: 400,
                            color: Colors.white,
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: List.generate(
                                  controller.egyptStates.length,
                                  (index) => GestureDetector(
                                        child: Card(
                                          color: primaryColor,
                                          child: Center(
                                            child: Txt(
                                              color: accentColor,
                                              title:
                                                  controller.egyptStates[index],
                                              isBold: true,
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          selectedLocation =
                                              controller.egyptStates[index];
                                          Navigator.pop(context);
                                        },
                                      )),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: Get.height / 3,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: primaryColor,
                          size: 100,
                        ),
                        Txt(
                          title: "Choose search location ",
                          color: primaryColor,
                          isBold: true,
                          size: 22,
                        )
                      ],
                    ),
                  ).asGlass(
                      frosted: true,
                      blurX: 20,
                      blurY: 20,
                      clipBorderRadius: BorderRadius.circular(12)),
                ),
                GestureDetector(
                  onTap: () {
                    Get.generalDialog(
                      barrierDismissible: true,
                      barrierLabel: "Search",
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return AlertDialog(
                          title: Center(
                            child: Txt(
                              title: "Choose a blood Type",
                              isBold: true,
                            ),
                          ),
                          content: Container(
                            height: 500,
                            width: 400,
                            color: Colors.white,
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: List.generate(
                                  controller.bloodTypes.length,
                                  (index) => GestureDetector(
                                        child: Card(
                                          color: primaryColor,
                                          child: Center(
                                            child: Txt(
                                              color: accentColor,
                                              title:
                                                  controller.bloodTypes[index],
                                              isBold: true,
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          selectedBloodType =
                                              controller.bloodTypes[index];
                                          Navigator.pop(context);
                                        },
                                      )),
                            ),
                          ).asGlass(),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: Get.height / 3,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: primaryColor,
                          size: 100,
                        ),
                        Txt(
                          title: "Choose blood type",
                          color: primaryColor,
                          isBold: true,
                          size: 22,
                        )
                      ],
                    ),
                  ).asGlass(
                      clipBorderRadius: BorderRadius.circular(12),
                      frosted: true,
                      blurX: 20,
                      blurY: 20),
                ),
                Container(
                  height: 50,
                  child: TextButton(
                    onPressed: () => Get.to(() => DonorsScreen()),
                    style: TextButton.styleFrom(
                        minimumSize: Size.infinite,
                        backgroundColor: accentColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Txt(
                      title: "SEARCH",
                      isBold: true,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
