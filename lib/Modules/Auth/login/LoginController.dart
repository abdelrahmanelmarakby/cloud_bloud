import 'dart:convert';

import 'package:cloud_bloud/Modules/Auth/user_model.dart';
import 'package:cloud_bloud/Modules/Home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../consts.dart';

class LoginController extends GetxController {
  //==>VARS<==
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late User userData;
  //==>Functions<==
  Future<User> login(String username, String password) async {
    final loginURL =
        Uri.parse("https://regreenrecycleapp.000webhostapp.com/login.php");
    final http.Response response = await http.post(loginURL, body: {
      "seeker_donor_name": username,
      "seeker_donor_password": password
    }, headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    });

    final Map<String, dynamic> parsed =
        jsonDecode(utf8.decode(response.bodyBytes));

    if (parsed.isEmpty) {
      Get.snackbar('Error Signing in account',
          "Please make sure your username and password are correct",
          colorText: Colors.black,
          barBlur: 25,
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.all(10));
    }
    if (parsed.isNotEmpty) Get.offAll(() => HomeScreen());
    userData = User.fromJson(parsed);
    print(userData.toJson());
    profileUserID = userData.id;
    profileUsername = userData.seekerDonorName;
    profileEmail = userData.seekerDonorEmail;
    profilePhone = userData.seekerDonorPhone;
    profileAge = userData.seekerDonorAge;
    profileAddress = userData.seekerDonorAddress;
    profileBloodType = userData.seekerDonorBloodType;
    return userData;
  }
}
