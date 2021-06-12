// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.seekerDonorName,
    required this.seekerDonorEmail,
    required this.seekerDonorPassword,
    required this.seekerDonorAddress,
    required this.seekerDonorAge,
    required this.seekerDonorPhone,
    required this.seekerDonorBloodType,
    required this.userId,
  });

  final String id;
  final String seekerDonorName;
  final String seekerDonorEmail;
  final String seekerDonorPassword;
  final String seekerDonorAddress;
  final String seekerDonorAge;
  final String seekerDonorPhone;
  final String seekerDonorBloodType;
  final dynamic userId;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        seekerDonorName: json["Seeker_donor_name"] == null
            ? null
            : json["Seeker_donor_name"],
        seekerDonorEmail: json["Seeker_donor_email"] == null
            ? null
            : json["Seeker_donor_email"],
        seekerDonorPassword: json["Seeker_donor_password"] == null
            ? null
            : json["Seeker_donor_password"],
        seekerDonorAddress: json["Seeker_donor_address"] == null
            ? null
            : json["Seeker_donor_address"],
        seekerDonorAge:
            json["Seeker_donor_age"] == null ? null : json["Seeker_donor_age"],
        seekerDonorPhone: json["Seeker_donor_phone"] == null
            ? null
            : json["Seeker_donor_phone"],
        seekerDonorBloodType: json["Seeker_donor_blood_type"] == null
            ? null
            : json["Seeker_donor_blood_type"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Seeker_donor_name": seekerDonorName,
        "Seeker_donor_email": seekerDonorEmail,
        "Seeker_donor_password": seekerDonorPassword,
        "Seeker_donor_address": seekerDonorAddress,
        "Seeker_donor_age": seekerDonorAge,
        "Seeker_donor_phone": seekerDonorPhone,
        "Seeker_donor_blood_type": seekerDonorBloodType,
        "user_id": userId,
      };
}
