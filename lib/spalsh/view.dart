import 'dart:async';

import 'package:cloud_bloud/login/LoginView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class spalshPage extends StatefulWidget {
  @override
  _spalshPageState createState() => _spalshPageState();
}

class _spalshPageState extends State<spalshPage> {
  @override
  initState() {
    super.initState();
    waitAndNavigate();
  }

  waitAndNavigate() {
    Timer(Duration(seconds: 3), () => Get.to(() => LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    'assets/appLogo.png',
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Opacity(
              child: Container(
                  height: Get.height,
                  width: Get.width,
                  child: Image.asset(
                    'assets/pattern.png',
                    fit: BoxFit.cover,
                  )),
              opacity: .15,
            ),
          ],
        ),
      ),
    );
  }
}
