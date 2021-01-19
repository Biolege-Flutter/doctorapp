import 'dart:convert';

DoctorCustomer DoctorCustomerFromJson(String str) =>
    DoctorCustomer.fromJson(json.decode(str));

String DoctorCustomerToJson(DoctorCustomer data) => json.encode(data.toJson());

class DoctorCustomer {
  String id;
  String name;
  String email;
  String gender;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String customerImage;
  Address address;

  DoctorCustomer({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.customerImage,
    this.address,
  });

  factory DoctorCustomer.fromJson(Map<String, dynamic> json) => DoctorCustomer(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      gender: json['gender'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      address: Address.fromJson(json['address']));

  Object toJson() {}

  // factory DoctorCustomer.fromJson(Map<String, dynamic> json) => DoctorCustomer(
  // 	id = json["id"],
  // 	name = json["name"],
  // 	email = json["email"],
  // 	gender = json["gender"],
  // 	createdAt = DateTime.json["createdAt"],
  // 	updatedAt = DateTime.json["updatedAt"],
  // );

  // Map<String, dynamic> toJson() => {
  // 	"id" = id,
  // 	"name" = name,
  // 	"email" = email,
  // 	"gender" = gender,
  // 	"createdAt" = createdAt,
  // 	"updatedAt" = updatedAt,
  // 	"v" = v,
  // 	"customerImage" = customerImage,
  // };

}

class Address {
  String state;
  String city;
  int pinCode;
  String homeAddress;

  Address({this.city, this.homeAddress, this.pinCode, this.state});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json['city'],
        state: json['state'],
        pinCode: json['pinCode'],
        homeAddress: json['homeAddress'],
      );

  Map<String, dynamic> toJson() => {
        'city': city,
        'state': state,
        'pinCode': pinCode,
        'homeAddress': homeAddress,
      };
}
