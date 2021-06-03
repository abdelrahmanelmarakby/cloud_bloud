import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  //==>VARS<==
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  //==>Functions<==
  Future login(String username, String password) async {
    final loginURL =
        Uri.parse("https://regreenrecycleapp.000webhostapp.com/login.php");
    final http.Response response = await http.post(loginURL, body: {
      "seeker_donor_name": username,
      "seeker_donor_password": password
    });
    final List body = jsonDecode(response.body);
    if (body.isEmpty) {
      Get.snackbar('Error Signing in account',
          "Please make sure your username and password are correct",
          colorText: Colors.black,
          barBlur: 25,
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.all(10));
    }

    return jsonDecode(response.body);
  }
}
