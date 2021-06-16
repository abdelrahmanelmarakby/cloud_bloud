import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts.dart';
import 'donors_model.dart';

class DonorController extends GetxController {
  Future<List<Donors>> getDonors(String bloodType, String location) async {
    var parsed = [];
    final donorsUrl =
        Uri.parse("https://regreenrecycleapp.000webhostapp.com/donors.php");
    final http.Response response = await http.post(
      donorsUrl,
      body: {
        "Seeker_donor_address": selectedLocation,
        "Seeker_donor_blood_type": selectedBloodType,
      },
    );
    if (response.statusCode == 200) {
      parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      if (parsed.isEmpty) {
        Get.snackbar(
            'no donors', "The Search you entered dose not match and donors",
            colorText: Colors.black,
            barBlur: 25,
            duration: Duration(seconds: 10),
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.all(10));
      }
    }
    return parsed.map<Donors>((i) => Donors.fromJson(i)).toList();
  }

  launchMailto(String mail) async {
    final mailtoLink = Mailto(
      to: [mail],
      subject: 'Donation request',
      body:
          "Hi , I'm reaching you to ask you to donate and help us with your donation \n Sent by Cloud Blood app",
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

  callNumber(String number) async {
    //set the number here
    await FlutterPhoneDirectCaller.callNumber(number);
  }
}
