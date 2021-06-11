class User {
  String? id;
  String? seekerDonorName;
  String? seekerDonorEmail;
  String? seekerDonorPassword;
  String? seekerDonorAddress;
  String? seekerDonorAge;
  String? seekerDonorPhone;
  String? seekerDonorBloodType;
  String? userId;

  User(
      {this.id,
      this.seekerDonorName,
      this.seekerDonorEmail,
      this.seekerDonorPassword,
      this.seekerDonorAddress,
      this.seekerDonorAge,
      this.seekerDonorPhone,
      this.seekerDonorBloodType,
      this.userId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    seekerDonorName = json['Seeker_donor_name'];
    seekerDonorEmail = json['Seeker_donor_email'];
    seekerDonorPassword = json['Seeker_donor_password'];
    seekerDonorAddress = json['Seeker_donor_address'];
    seekerDonorAge = json['Seeker_donor_age'];
    seekerDonorPhone = json['Seeker_donor_phone'];
    seekerDonorBloodType = json['Seeker_donor_blood_type'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Seeker_donor_name'] = this.seekerDonorName;
    data['Seeker_donor_email'] = this.seekerDonorEmail;
    data['Seeker_donor_password'] = this.seekerDonorPassword;
    data['Seeker_donor_address'] = this.seekerDonorAddress;
    data['Seeker_donor_age'] = this.seekerDonorAge;
    data['Seeker_donor_phone'] = this.seekerDonorPhone;
    data['Seeker_donor_blood_type'] = this.seekerDonorBloodType;
    data['user_id'] = this.userId;
    return data;
  }
}
