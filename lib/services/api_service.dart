import 'dart:async';

import 'dart:convert';
// import 'dart:io';
import 'dart:typed_data';

import 'package:biolege/app/locator.dart';
import 'package:biolege/models/clinic.dart';
import 'package:biolege/models/doctor.dart';
import 'package:biolege/models/doctorCustormer.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:biolege/services/local_storage.dart';
import 'package:http/http.dart' as http;
import 'package:stacked_services/stacked_services.dart';

class APIService {
  // base url
  String url = "https://biolegenew.herokuapp.com/api/";

  // doctors
  String urlGetDoctors = "doctors";
  String urlGetDoctorByID = "doctor";
  String urlupdateDoctor = "doctor";
  String urlCreateDoctor = "doctor/create";
  String urlUpdateDoctorImage = "doctor/image/:doctorId";

  // clinics
  String urlGetAllClinics = "clinics";
  String urlGetClinicById = "clinic/:clinicId";

  // Diagnostic Customers
  String urlDiagnosticCustomerCreate = "diagnostic/customer/create";
  String urlUpdateDiagnosticCustomer = "diagnostic/customer";
  String urlDiagnosticCustomerGet = "diagnostic/customer";
  String urlGetAllDiagnosticCustomers = "diagnostic/customers";
  String urlGetDiagnosticCustomerByPhone = "diagnostic/customer/phone/";
  // Create Doctor

  Future createDoctor() async {
    final SnackbarService _snackbar = locator<SnackbarService>();
    final StorageService _localStorage = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlCreateDoctor');
      var request = new http.Request("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.body = jsonEncode({
        "address": {
          "state": _localStorage.getDoctorState,
          "city": _localStorage.getDoctorCity,
          "pinCode": _localStorage.getDoctorPinCode.toString(),
          "homeAddress": _localStorage.getDoctorAddress,
        },
        "dob": _localStorage.getDoctorDOB,
        "phoneNumber": _localStorage.getDoctorPhoneNumber.toString(),
        "gender": _localStorage.getDoctorGender,
        "email": _localStorage.getDoctorEmail,
        // "specification": _localStorage.getDoctorSpecialization,
        // "organization": _localStorage.getDoctorOrganization,
        // // "about" : _localStorage
        // "services": _localStorage.getDoctorService,
        "name": _localStorage.getDoctorName,
      });
      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print("Doctor created with doctor id : " +
          responseJson["doctor"]["_id"].toString());

      _localStorage.setDoctorId(responseJson['doctor']['_id']);
      _dataFromApi.setDoctor(Doctor.fromJson(responseJson['doctor']));

      return Doctor.fromJson(responseJson['doctor']);
    } catch (e) {
      print("Exception in creating doctor :" + e.toString());
      _snackbar.showSnackbar(message: e.toString());
      return null;
    }
  }

//___________________________________________________________________
// Getting doctor by ID

  // Future<Doctor> getDoctorByID(String docID) async {
  //   final SnackbarService _snackBar = locator<SnackbarService>();
  //   final StorageService _storageService = locator<StorageService>();
  //   final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();
  //   try {
  //     var uri = Uri.parse('$url$urlupdateDoctor$docID');
  //     var requeest = new http.Request("GET", uri);

  //     var response = await requeest.send();
  //     var responseString = await response.stream.bytesToString();
  //     var responseJson = json.decode(responseString);
  //     await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
  //     return Doctor.fromJson(responseJson);
  //   } catch (e) {
  //     print("exception at getting doctor:" + e.toString());
  //     _snackBar.showSnackbar(message: e.toString());
  //   }
  // }

// adding doctor experience

  Future<Doctor> addDoctorExperience(
      {String docID,
      String expTitle,
      String expStartYear,
      String expEndYear,
      String expOrganization}) async {
    final SnackbarService _snackBar = locator<SnackbarService>();
    final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlupdateDoctor$docID');
      var request = new http.MultipartRequest("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.fields["experience.experienceTitle"] = expTitle;
      request.fields["experience.experienceStartYear"] = expStartYear;
      request.fields["experience.experienceEndYear"] = expEndYear;
      request.fields["experience.experienceOrganization"] = expOrganization;

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print("Doctor experience added with doctor id : " +
          Doctor.fromJson(responseJson).id);
      _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("error while updating experience : " + e.toString());
      _snackBar.showSnackbar(message: e.toString());
    }
  }

// Adding doctor education
  Future<Doctor> addDoctorEducation(
      {String docID,
      String eduRegNo,
      String eduStartYear,
      String eduEndYear,
      String eduCollege,
      String eduDegree,
      String eduField}) async {
    final SnackbarService _snackBar = locator<SnackbarService>();
    final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlupdateDoctor$docID');
      var request = new http.MultipartRequest("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.fields["education.educationRegistrationNumber"] = eduRegNo;
      request.fields["education.educationStartYear"] = eduStartYear;
      request.fields["education.educationEndYear"] = eduEndYear;
      request.fields["education.educationDegree"] = eduDegree;
      request.fields["education.educationCollege"] = eduCollege;
      request.fields["education.educationField"] = eduField;

// Sending request
      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print("Doctor experience added with doctor id : " +
          Doctor.fromJson(responseJson).id);
      await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("error while updating experience : " + e.toString());
      _snackBar.showSnackbar(message: e.toString());
    }
  }
// __________________________________________________________________

// adding doctor feedbacks
  Future<Doctor> addDoctorFeedBack(
      {String docID, String heading, String body}) async {
    final SnackbarService _snackBar = locator<SnackbarService>();
    // final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlupdateDoctor$docID');
      var request = new http.MultipartRequest("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.fields["feedbacks.heading"] = heading;
      request.fields["feedbacks.body"] = body;

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print("Doctor experience added with doctor id : " +
          Doctor.fromJson(responseJson).id);
      await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("error while updating experience : " + e.toString());
      _snackBar.showSnackbar(message: e.toString());
    }
  }

  // ______________________________________________________________________

  // adding Doctor articles

  Future<Doctor> addDoctorArticles(
      {String docID, String heading, String body}) async {
    final SnackbarService _snackBar = locator<SnackbarService>();
    // final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlupdateDoctor$docID');
      var request = new http.MultipartRequest("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.fields["articles.heading"] = heading;
      request.fields["articles.body"] = body;

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print("Doctor experience added with doctor id : " +
          Doctor.fromJson(responseJson).id);
      await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("error while updating experience : " + e.toString());
      _snackBar.showSnackbar(message: e.toString());
    }
  }

// ____________________________________________________________________

// adding doctor clinics
  Future<Doctor> addDoctorClinic(
      {String docID,
      String clinicname,
      String clinicPhoneNumber,
      String day,
      String startTime,
      String endTime}) async {
    final SnackbarService _snackBar = locator<SnackbarService>();
    // final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    try {
      var uri = Uri.parse('$url$urlupdateDoctor$docID');

      var request = new http.Request("POST", uri);

      request.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });

      request.body = jsonEncode({
        "clinics": {
          "clinic": {"name": clinicname, "phoneNumber": clinicPhoneNumber},
          "days": {"day": day, "startTime": startTime, "endTime": endTime}
        }
      });

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);
      print("Doctor experience added with doctor id : " +
          Doctor.fromJson(responseJson).id);
      await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("error while updating experience : " + e.toString());
      _snackBar.showSnackbar(message: e.toString());
    }
  }

// ____________________________________________________________________

// updating doctor image
  Future<Doctor> updateDoctorImage(String doctorID) async {
    final SnackbarService _snackBarService = locator<SnackbarService>();
    final StorageService _storageService = locator<StorageService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();

    Uint8List doctorImage = await _storageService.getDoctorImageFromLocal();
    String doctorImageB64 = base64Encode(doctorImage);

    try {
      var uri = Uri.parse('$url$urlUpdateDoctorImage$doctorID');
      var request = new http.MultipartRequest("PUT", uri);
      //
      request.headers
          .addAll({"Content-Type": 'application/octet-stream; charset=UTF-8'});

      request
        ..files.add(new http.MultipartFile.fromBytes(
          "doctorImage", doctorImageB64.codeUnits,
          // contentType: new MediaType('image', 'jpeg')
        ));

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);
      print("Doctor Image updated with doctor id : " +
          Doctor.fromJson(responseJson).id);
      await _dataFromApi.setDoctor(Doctor.fromJson(responseJson));
      return Doctor.fromJson(responseJson);
    } catch (e) {
      print("At update doctor image : " + e.toString());
      _snackBarService.showSnackbar(message: e.toString());
      return null;
    }
  }

  //Get  the list of all clinics
  Future<List<Clinic>> getAllClinic() async {
    final SnackbarService _snackBar = locator<SnackbarService>();

    try {
      var uri = Uri.parse('$url$urlGetAllClinics');
      // creating a get request
      var request = new http.Request('GET', uri);

      // sending request

      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      print(responseString);
      List<Clinic> clist = [];

      responseJson
          .forEach((clinic) => clist.add(clinicFromJson(json.encode(clinic))));
      // returns the clinic list
      return clist;
    } catch (e) {
      print("exception in getting all doctor :" + e.toString());
      _snackBar.showSnackbar(message: e.toString());
      return null;
    }
  }

// Fetches diagnostic customer data from the api by using customer phone
  Future<DoctorCustomer> getDiagnosticCustomerByPhone(String phone) async {
    // _________________________________________________________________________
    // Locating Dependencies
    final SnackbarService _snackBarService = locator<SnackbarService>();
    // final StorageService _storageService = locator<StorageService>();
    // _________________________________________________________________________
    try {
      // _______________________________________________________________________
      
            var getDiagnosticCustomerUri =
                Uri.parse('$url$urlGetDiagnosticCustomerByPhone$phone');
      print(getDiagnosticCustomerUri);
      // _______________________________________________________________________
      // Creating get requests
      var getDiagnosticCustomerRequest =
          new http.Request("GET", getDiagnosticCustomerUri);
      // _______________________________________________________________________
      // Receiving the JSON response
      var getDiagnosticCustomerResponse =
          await getDiagnosticCustomerRequest.send();
      var getDiagnosticCustomerResponseString =
          await getDiagnosticCustomerResponse.stream.bytesToString();
      var getDiagnosticCustomerResponseJson =
          json.decode(getDiagnosticCustomerResponseString);
      if (getDiagnosticCustomerResponseString.length == 2) return null;

      return DoctorCustomer.fromJson(getDiagnosticCustomerResponseJson[0]);
    } catch (e) {
      print("At get diagnostic customer by phone : " + e.toString());
      _snackBarService.showSnackbar(message: e.toString());
      return null;
    }
  }

  // Fetches all diagnostic customers from the API
  Future getAllDiagnosticCustomers() async {
    // _______________________________________________________________________
    // Locating Dependencies
    final SnackbarService _snackBarService = locator<SnackbarService>();
    final DataFromAPIService _dataFromApi = locator<DataFromAPIService>();
    // _______________________________________________________________________
    try {
      // URL to be called
      var uri = Uri.parse('$url$urlGetAllDiagnosticCustomers');
      // Creating a get request
      var request = new http.Request("GET", uri);
      // _______________________________________________________________________

      // _______________________________________________________________________
      // Receiving the JSON response
      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      var responseJson = json.decode(responseString);

      // _______________________________________________________________________
      // Serializing Json to DiagnosticCustomer Class
      List<DoctorCustomer> dgncstlist = [];
      Map<String, DoctorCustomer> customerAndDetailsMapping = {};

      responseJson.forEach((dgncst) {
        DoctorCustomer x = DoctorCustomerFromJson(json.encode(dgncst));
        dgncstlist.add(x);
        customerAndDetailsMapping[x.id] = x;
      });

      await _dataFromApi
          .setDiagnosticCustomersMappedList(customerAndDetailsMapping);

      // _______________________________________________________________________
      return dgncstlist;
    } catch (e) {
      print("At get all diagnostic customer : " + e.toString());
      _snackBarService.showSnackbar(message: e.toString());
      return [];
    }
  }



}

