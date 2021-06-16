import 'package:get/get.dart';

class SeekerController extends GetxController {
  List<String> bloodTypes = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  List<String> egyptStates = [
    "Cairo",
    "Alexandria",
    "Giza",
    "Qalyubia",
    "Port Said",
    "Suez",
    "Gharbia",
    "Luxor",
    "Mansoura",
    "Gharbia",
    "Asyut",
    "Ismailia",
    "Faiyum",
    "Sharqia",
    "Damietta",
    "Aswan",
    "Minya",
    "Beheira",
    "Beni Suef",
    "Red Sea",
    "Qena",
    "Sohag",
    "Monufia",
    "Qalyubia",
    "North Sinai",
  ];
  String selectedLocation = "";
  String selectedBloodType = "";
}
