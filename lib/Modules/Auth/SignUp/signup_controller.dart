import 'package:cloud_bloud/Modules/Auth/login/LoginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController bloodType = TextEditingController();
  TextEditingController age = TextEditingController();

  Future signUp<User>(
    String username,
    String email,
    String password,
    String phone,
    String location,
    String bloodType,
    String age,
  ) async {
    print("started");
    final url =
        Uri.parse('https://regreenrecycleapp.000webhostapp.com/register.php');

    final response = await http.post(url, body: {
      "Seeker_donor_name": username.toString(),
      "Seeker_donor_email": email.toString(),
      "Seeker_donor_password": password.toString(),
      "Seeker_donor_phone": phone.toString(),
      "Seeker_donor_address": location.toString(),
      "Seeker_donor_blood_type": bloodType.toString(),
      "Seeker_donor_age": age.toString(),
    }, headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    });
    if (response.statusCode == 200) Get.offAll(() => LoginView());
  }
}
