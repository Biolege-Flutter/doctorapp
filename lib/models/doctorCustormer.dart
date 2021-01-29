import 'dart:convert';

import 'package:biolege/models/clinic.dart';

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
  List<DoctorObject> doctors;
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
    this.doctors
  });

  factory DoctorCustomer.fromJson(Map<String, dynamic> json) => DoctorCustomer(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      gender: json['gender'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      address: Address.fromJson(json['address']),
      v: json["__v"],
      doctors: List<DoctorObject>.from(
            json["doctors"].map((x) => DoctorObject.fromJson(x))),
      );

  

  // factory DoctorCustomer.fromJson(Map<String, dynamic> json) => DoctorCustomer(
  // 	id = json["id"],
  // 	name = json["name"],
  // 	email = json["email"],
  // 	gender = json["gender"],
  // 	createdAt = DateTime.json["createdAt"],
  // 	updatedAt = DateTime.json["updatedAt"],
  // );

  Map<String, dynamic> toJson() => {
  	
    "id" : id,
  	"name" : name,
  	"email" : email,
  	"gender" : gender,
  	"createdAt" : createdAt,
  	"updatedAt" : updatedAt,
  	"v" : v,
  	"customerImage" : customerImage,
    "doctors": List<dynamic>.from(doctors.map((x) => x.toJson())),
  };

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

class DoctorObject {
  DoctorObject({
    this.visitingDate,
    this.id,
    this.doctor,
    this.clinic,
  });

  List<AppointmentDate> visitingDate;
  String id;
  ObjectWithID doctor;
  ObjectWithID clinic;

  factory DoctorObject.fromJson(Map<String, dynamic> json) => DoctorObject(
        visitingDate: List<AppointmentDate>.from(
            json["visitingDate"].map((x) => AppointmentDate.fromJson(x))),
        id: json["_id"],
        doctor: ObjectWithID.fromJson(json["doctor"]),
        clinic: ObjectWithID.fromJson(json["clinic"]),
      );

  Map<String, dynamic> toJson() => {
        "visitingDate": List<dynamic>.from(visitingDate.map((x) => x.toJson())),
        "_id": id,
        "doctor": doctor.toJson(),
        "clinic": clinic.toJson(),
      };
  Map<String, dynamic> toJsonForPut() => {
        "visitingDate": List<dynamic>.from(visitingDate.map((x) => x.toJson())),
        "doctor": doctor.toJson(),
        "clinic": clinic.toJson(),
      };
}

class ObjectWithID {
  ObjectWithID({
    this.id,
  });

  String id;

  factory ObjectWithID.fromJson(Map<String, dynamic> json) => ObjectWithID(
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
      };
}