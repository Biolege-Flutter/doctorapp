// To parse this JSON data, do
//
//     final clinic = clinicFromJson(jsonString);

import 'dart:convert';

Clinic clinicFromJson(String str) => Clinic.fromJson(json.decode(str));

String clinicToJson(Clinic data) => json.encode(data.toJson());

class Clinic {
  Clinic({
    this.address,
    this.location,
    this.name,
    this.phoneNumber,
    this.role,
    this.logo,
    this.addressProof,
    this.ownerName,
    this.ownerPhoneNumber,
    this.ownerIdProofName,
    this.ownerIdProof,
    this.services,
    this.clinicEmployee,
    this.id,
    this.customers,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Address address;
  Location location;
  String name;
  int phoneNumber;
  dynamic role;
  String logo;
  String addressProof;
  String ownerName;
  int ownerPhoneNumber;
  String ownerIdProofName;
  String ownerIdProof;
  String services;
  List<ClinicEmployeeObject> clinicEmployee;
  String id;
  List<CustomerElement> customers;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Clinic.fromJson(Map<String, dynamic> json) => Clinic(
        address: Address.fromJson(json["address"]),
        location: Location.fromJson(json["location"]),
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        role: json["role"],
        logo: json["logo"],
        addressProof: json["addressProof"],
        ownerName: json["ownerName"],
        ownerPhoneNumber: json["ownerPhoneNumber"],
        ownerIdProofName: json["ownerIdProofName"],
        ownerIdProof: json["ownerIdProof"],
        services: json["services"],
        clinicEmployee: List<ClinicEmployeeObject>.from(json["clinicEmployee"]
            .map((x) => ClinicEmployeeObject.fromJson(x))),
        id: json["_id"],
        customers: List<CustomerElement>.from(
            json["customers"].map((x) => CustomerElement.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "address": address.toJson(),
        "location": location.toJson(),
        "name": name,
        "phoneNumber": phoneNumber,
        "role": role,
        "logo": logo,
        "addressProof": addressProof,
        "ownerName": ownerName,
        "ownerPhoneNumber": ownerPhoneNumber,
        "ownerIdProofName": ownerIdProofName,
        "ownerIdProof": ownerIdProof,
        "services": services,
        "clinicEmployee":
            List<dynamic>.from(clinicEmployee.map((x) => x.toJson())),
        "_id": id,
        "customers": List<dynamic>.from(customers.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

class Address {
  Address({
    this.state,
    this.city,
    this.pincode,
    this.clinicAddress,
  });

  String state;
  String city;
  int pincode;
  String clinicAddress;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        state: json["state"],
        city: json["city"],
        pincode: json["pincode"],
        clinicAddress: json["clinicAddress"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "city": city,
        "pincode": pincode,
        "clinicAddress": clinicAddress,
      };
}

class ClinicEmployeeObject {
  ClinicEmployeeObject();

  factory ClinicEmployeeObject.fromJson(Map<String, dynamic> json) =>
      ClinicEmployeeObject();

  Map<String, dynamic> toJson() => {};
}


class AppointmentDate {
  AppointmentDate({
    this.date,
    this.isCompleted,
  });

  DateTime date;
  int isCompleted;

  factory AppointmentDate.fromJson(Map<String, dynamic> json) =>
      AppointmentDate(
        date: DateTime.parse(json["date"]),
        isCompleted: json["isCompleted"],
      );

  Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "isCompleted": isCompleted,
      };
}



class CustomerElement {
  CustomerElement({
    this.customer,
    this.appointmentDate,
    this.id
  });

  CustomerCustomer customer;
  List<AppointmentDate> appointmentDate;
  String id;
  factory CustomerElement.fromJson(Map<String, dynamic> json) =>
      CustomerElement(
        customer: CustomerCustomer.fromJson(json["customer"]),
        appointmentDate: List<AppointmentDate>.from(
            json["appointmentDate"].map((x) => AppointmentDate.fromJson(x))),
        id: json["_id"]
      );

  Map<String, dynamic> toJson() => {
        "customer": customer.toJson(),
        "appointmentDate":
            List<dynamic>.from(appointmentDate.map((x) => x.toJson())),
        "_id":id,
      };
}

class CustomerCustomer {
  CustomerCustomer({
    this.id,
  });

  String id;

  factory CustomerCustomer.fromJson(Map<String, dynamic> json) =>
      CustomerCustomer(
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
      };
}

class Location {
  Location({
    this.longitude,
    this.latitude,
  });

  double longitude;
  double latitude;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        longitude: json["longitude"].toDouble(),
        latitude: json["latitude"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "longitude": longitude,
        "latitude": latitude,
      };
}
