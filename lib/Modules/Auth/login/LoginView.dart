import 'package:cloud_bloud/Modules/Auth/SignUp/signup_view.dart';
import 'package:cloud_bloud/Modules/Auth/login/LoginController.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:cloud_bloud/consts.dart';
import 'package:cloud_bloud/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BACKGROUND.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * .1,
                ),
                Center(
                    child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    Assets.assetsAppLogo,
                    height: Get.height * .1,
                  ),
                )),
                SizedBox(
                  height: Get.height * .05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Txt(
                      title: "Welcome 👋",
                      size: 22,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => SignUpView()),
                      child: Txt(
                        title: "SignUp",
                        size: 20,
                        color: Colors.redAccent,
                      ),
                    )
                  ],
                ),
                Txt(
                  title: "plz sign in to continue",
                  size: 14,
                  color: Colors.white.withOpacity(.85),
                ),
                SizedBox(
                  height: Get.height * .1,
                ),
                Container(
                  child: AutofillGroup(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
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
                                    autofillHints: [AutofillHints.username],
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        hintText: "example"),
                                    autocorrect: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Column(
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
                                    autofillHints: [AutofillHints.password],
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        hintText: "******"),
                                    autocorrect: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                TextInput.finishAutofillContext();
                                controller.login(controller.username.text,
                                    controller.password.text);
                              },
                              style: TextButton.styleFrom(
                                  minimumSize: Size.infinite,
                                  backgroundColor: accentColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: Txt(
                                title: "SIGN IN",
                                isBold: true,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).asGlass(
                    tileMode: TileMode.mirror,
                    blurY: 30,
                    blurX: 30,
                    clipBorderRadius: BorderRadius.circular(12),
                    frosted: true),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
