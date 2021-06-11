import 'package:cloud_bloud/Modules/Auth/SignUp/signup_controller.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/BACKGROUND.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Txt(
                    title: "SignUp",
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                AutofillGroup(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Txt(
                              title: "User information",
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "User name",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: controller.username,
                                  autofillHints: [
                                    AutofillHints.username,
                                    AutofillHints.nickname,
                                    AutofillHints.name
                                  ],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "your Name"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "Password",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: controller.password,
                                  //controller: ,
                                  autofillHints: [AutofillHints.password],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "*************"),
                                  autocorrect: true,
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "email",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: controller.email,
                                  keyboardType: TextInputType.emailAddress,
                                  autofillHints: [
                                    AutofillHints.email,
                                  ],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "example@email.com"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "phone number",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: controller.phone,
                                  keyboardType: TextInputType.phone,
                                  //controller: ,
                                  autofillHints: [
                                    AutofillHints.telephoneNumber
                                  ],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "Should be 11 numbers"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).asGlass(
                      frosted: true,
                      tintColor: Colors.white,
                      clipBorderRadius: BorderRadius.circular(12),
                      blurX: 80,
                      blurY: 20,
                      tileMode: TileMode.repeated),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Txt(
                            title: "Donating Information",
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Address",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                controller: controller.location,

                                //controller: ,
                                autofillHints: [AutofillHints.addressCity],
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    hintText: "example"),
                                autocorrect: true,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Age",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                //controller: ,
                                controller: controller.age,
                                keyboardType: TextInputType.number,
                                autofillHints: [AutofillHints.birthday],
                                decoration: InputDecoration(
                                    alignLabelWithHint: true, hintText: "21"),
                                autocorrect: true,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Blood Type",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                controller: controller.bloodType,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true, hintText: "B+"),
                                autocorrect: true,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                controller.signUp(
                                    controller.username.text,
                                    controller.email.text,
                                    controller.password.text,
                                    controller.phone.text,
                                    controller.location.text,
                                    controller.bloodType.text,
                                    controller.age.text);
                              },
                              child: Txt(
                                title: "SIGNUP",
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ).asGlass(
                    frosted: true,
                    tintColor: Colors.white,
                    clipBorderRadius: BorderRadius.circular(12),
                    blurX: 30,
                    blurY: 30,
                    tileMode: TileMode.mirror),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
