import 'package:cloud_bloud/Modules/Auth/SignUp/signup_view.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../consts.dart';

class LoginView extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
                  'assets/appLogo.png',
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
                color: Colors.grey,
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              AutofillGroup(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Align(
                            child: Txt(
                              title: "email",
                              size: 14,
                            ),
                            alignment: Alignment.bottomLeft,
                          ),
                          Container(
                            child: TextFormField(
                              autofillHints: [AutofillHints.email],
                              decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  hintText: "Your_email@email.com"),
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
                              title: "password",
                              size: 14,
                            ),
                            alignment: Alignment.bottomLeft,
                          ),
                          Container(
                            child: TextFormField(
                              autofillHints: [AutofillHints.password],
                              decoration: InputDecoration(
                                  alignLabelWithHint: true, hintText: "******"),
                              autocorrect: true,
                              onEditingComplete: () =>
                                  TextInput.finishAutofillContext(
                                      shouldSave: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  color: accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  minWidth: Get.width,
                  onPressed: () {},
                  child: Txt(
                    color: Colors.white,
                    title: "Sign IN",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
