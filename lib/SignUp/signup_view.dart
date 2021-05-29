import 'package:cloud_bloud/Widgets/txt_form.dart';
import 'package:cloud_bloud/login/LoginView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset('assets/appLogo.png'),
              SizedBox(
                height: Get.height * .1,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Txt(
                  title: "SignUp",
                  color: Colors.red,
                  size: 22,
                ),
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              TxtForm(
                title: "Email",
                icon: Icon(Icons.alternate_email),
                hint: "example@email.com",
              ),
              SizedBox(
                height: Get.height * .05,
              ),
              TxtForm(
                  title: "password",
                  hint: "*******",
                  icon: Icon(Icons.lock_outline))
            ],
          ),
        ),
      ),
    );
  }
}
