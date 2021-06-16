// To parse this JSON data, do
//
//     final donors = donorsFromJson(jsonString);

import 'dart:convert';

List<Donors> donorsFromJson(String str) =>
    List<Donors>.from(json.decode(str).map((x) => Donors.fromJson(x)));

String donorsToJson(List<Donors> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Donors {
  Donors({
    this.id = 0,
    this.name = "",
    this.email = "",
    this.address = "",
    this.phone = "",
    this.bloodType = "",
  });

  final int id;
  final String name;
  final String email;
  final String address;
  final String phone;
  final String bloodType;

  factory Donors.fromJson(Map<String, dynamic> json) => Donors(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        address: json["address"] == null ? null : json["address"],
        phone: json["phone"] == null ? null : json["phone"],
        bloodType: json["blood_Type"] == null ? null : json["blood_Type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,
        "blood_Type": bloodType,
      };
}
