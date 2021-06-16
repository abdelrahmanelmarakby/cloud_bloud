import 'package:cloud_bloud/Modules/Auth/login/LoginController.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../consts.dart';

class ProfileScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: primaryColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.width * .2,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                              height: Get.width * .2,
                              width: Get.width * .2,
                              child: CircleAvatar(
                                  backgroundColor: accentColor,
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    size: 50,
                                  ))),
                          Txt(
                            title: profileUsername,
                            isBold: true,
                            size: 18,
                            color: accentColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Get.height * .66,
              decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Name :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profileUsername,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Email :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profileEmail,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Phone number :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profilePhone,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Address :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profileAddress,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Age :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profileAge,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Blood Type:",
                            color: Colors.white,
                            size: 18,
                          ),
                          Txt(
                            title: profileBloodType,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            title: "Be visable   :",
                            color: Colors.white,
                            size: 18,
                          ),
                          Obx(
                            () => SwitcherButton(
                              size: 70,
                              value: controller.acceptingSwitch.value,
                              onChange: (value) {
                                if (value)
                                  isAccepting = 1.toString();
                                else
                                  isAccepting = 0.toString();
                              },
                            ),
                          )
                        ],
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
