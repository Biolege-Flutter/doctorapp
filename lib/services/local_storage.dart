import 'dart:typed_data';

import 'package:biolege/app/locator.dart';
import 'package:biolege/services/File_picker_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../misc/localKeys/localStorageKeys.dart';

class StorageService {
  String doctorUId = "Doctor_ID";
  String doctorUName = "Doctor_Name";
  String doctorUImage = "Doctor_Image";
  String doctorUDOB = "Doctor_DOB";
  String doctorUPhoneNumber = "Doctor_PhoneNumber";
  String doctorUGender = "Doctor_Gender";
  String doctorUEmail = "Doctor_Email";
  String doctorUState = "Doctor_State";
  String doctorUCity = "Doctor_city";
  String doctorUPinCode = "Doctor_PinCode";
  String doctorUAddress = "Doctor_Address";
  String doctorUSpecialization = "Doctor_Specialization";
  String doctorUOrganization = "Doctor_Organization";
//Education
  String doctorUEducationId = "Educaton_ID";
  String doctorUEducationRegistrationNumber = "Registration_number";
  String doctorUEducationStartYear = "Start_Year";
  String doctorUEducationEndYear = "End_year";
  String doctorUEducationDegree = "Degree";
  String doctorUEducationCollege = "College";
  String doctorUEducationField = "Education_Field";
//.......................................

  String doctorUService = "Doctor_Service";

//.......................................

//Doctor-Clinic

  String doctorUClinicId = "Clinic_ID";
  String doctorUClinicName = "Clinic_Name";
  String doctorUClinicPhoneNumber = "Clinic_PhoneNumber";

//Doctor-Clinic-days
  String doctorUDaysDay = "Clinic_Days";
  String doctorUDaysStartTime = "Clinic_Days_StartTime";
  String doctorUDaysEndTime = "Clinic_Days_EndTime";

//Doctor-Clinic-Fees
  String doctorUFees = "Fees";
  String doctorUAvgTime = "Avg_Time";
  String doctorUAvgPatientPerDay = "Avg_PatientPerDay";

//Experience
  String doctorUExperienceId = "Experience_ID";
  String doctorUExperienceTitle = "Title";
  String doctorUExperienceStartYear = "Experience_Start_Year";
  String doctorUExperienceEndYear = "Experience_End_Year";
  String doctorUExperienceOrganization = "experience_Organization";

  //user variables and their getters
  static String _doctorId;
  String get getDoctorId => _doctorId;

  static String _doctorName;
  String get getDoctorName => _doctorName;

  static String _doctorImage;
  String get getDoctorImage => _doctorImage;

  static String _doctorDOB;
  String get getDoctorDOB => _doctorDOB;

  static int _doctorPhoneNumber;
  int get getDoctorPhoneNumber => _doctorPhoneNumber;

  static String _doctorGender;
  String get getDoctorGender => _doctorGender;

  static String _doctorEmail;
  String get getDoctorEmail => _doctorEmail;

  static String _doctorState;
  String get getDoctorState => _doctorState;

  static String _doctorCity;
  String get getDoctorCity => _doctorCity;

  static int _doctorPinCode;
  int get getDoctorPinCode => _doctorPinCode;

  static String _doctorAddress;
  String get getDoctorAddress => _doctorAddress;

  static List<String> _doctorSpecialization;
  List<String> get getDoctorSpecialization => _doctorSpecialization;

  static String _doctorOrganization;
  String get getDoctorOrganization => _doctorOrganization;

  static List<String> _doctorEducationId;
  List<String> get getDoctorEducationId => _doctorEducationId;

  static List<String> _doctorEducationRegistrationNumber;
  List<String> get getDoctorEducationRegistrationNumber =>
      _doctorEducationRegistrationNumber;

  static List<String> _doctorEducationStartYear;
  List<String> get getDoctorEducationStartYear => _doctorEducationStartYear;

  static List<String> _doctorEducationEndYear;
  List<String> get getDoctorEducationEndYear => _doctorEducationEndYear;

  static List<String> _doctorEducationDegree;
  List<String> get getDoctorEducationDegree => _doctorEducationDegree;

  static List<String> _doctorEducationCollege;
  List<String> get getDoctorEducationCollege => _doctorEducationCollege;

  static List<String> _doctorEducationField;
  List<String> get getDoctorEducationField => _doctorEducationField;

  static List<String> _doctorExperienceId;
  List<String> get getDoctorExperienceId => _doctorExperienceId;

  static List<String> _doctorExperienceTitle;
  List<String> get getDoctorExperienceTitle => _doctorExperienceTitle;

  static List<String> _doctorExperienceStartYear;
  List<String> get getDoctorExperienceStartYear => _doctorExperienceStartYear;

  static List<String> _doctorExperienceEndYear;
  List<String> get getDoctorExperienceEndYear => _doctorExperienceEndYear;

  static List<String> _doctorExperienceOrganization;
  List<String> get getDoctorExperienceOrganization =>
      _doctorExperienceOrganization;

  static List<String> _doctorService;
  List<String> get getDoctorService => _doctorService;

  static String _doctorClinicId;
  String get getDoctorClinicId => _doctorClinicId;

  static String _doctorClinicName;
  String get getDoctorClinicName => _doctorClinicName;

  static int _doctorClinicPhoneNUmber;
  int get getDoctorClinicPhoneNumber => _doctorClinicPhoneNUmber;

  Future initLocalStorage() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();

    try {
      _doctorId = _localStorage.getString(doctorUId);
      _doctorName = _localStorage.getString(doctorUName);
      _doctorImage = _localStorage.getString(doctorUImage);
      _doctorDOB = _localStorage.getString(doctorUDOB);
      _doctorPhoneNumber = _localStorage.getInt(doctorUPhoneNumber);
      _doctorGender = _localStorage.getString(doctorUGender);
      _doctorEmail = _localStorage.getString(doctorUEmail);
      _doctorState = _localStorage.getString(doctorUState);
      _doctorCity = _localStorage.getString(doctorUCity);
      _doctorPinCode = _localStorage.getInt(doctorUPinCode);
      _doctorAddress = _localStorage.getString(doctorUAddress);
      _doctorSpecialization =
          _localStorage.getStringList(doctorUSpecialization);
      _doctorOrganization = _localStorage.getString(doctorUOrganization);
      _doctorEducationId = _localStorage.getStringList(doctorUEducationId);
      _doctorEducationRegistrationNumber =
          _localStorage.getStringList(doctorUEducationRegistrationNumber);
      _doctorEducationCollege =
          _localStorage.getStringList(doctorUEducationCollege);
      _doctorEducationDegree =
          _localStorage.getStringList(doctorUEducationDegree);
      _doctorEducationStartYear =
          _localStorage.getStringList(doctorUEducationStartYear);
      _doctorEducationEndYear =
          _localStorage.getStringList(doctorUEducationEndYear);
      _doctorEducationField =
          _localStorage.getStringList(doctorUEducationField);
      _doctorExperienceId = _localStorage.getStringList(doctorUExperienceId);
      _doctorExperienceTitle =
          _localStorage.getStringList(doctorUExperienceTitle);
      _doctorExperienceStartYear =
          _localStorage.getStringList(doctorUExperienceStartYear);
      _doctorExperienceEndYear =
          _localStorage.getStringList(doctorUExperienceEndYear);
      _doctorExperienceOrganization =
          _localStorage.getStringList(doctorUExperienceOrganization);
      _doctorService = _localStorage.getStringList(doctorUService);
      _doctorClinicId = _localStorage.getString(doctorUClinicId);
      _doctorClinicName = _localStorage.getString(doctorUClinicName);
      _doctorClinicPhoneNUmber = _localStorage.getInt(doctorUClinicPhoneNumber);
    } catch (e) {
      // To check the line number for the respective error remove the try catch
      print("Inititialising Local Storage Failed :  " + e);
    }
  }

  Future setDoctorId(String doctorId) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorId = doctorId;
    await _localStorage.setString(doctorUId, _doctorId);
  }

  Future setDoctorName(String doctorName) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorName = doctorName;
    await _localStorage.setString(doctorUName, _doctorName);
  }

  Future setDoctorImage(String doctorImage) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorImage = doctorImage;
    await _localStorage.setString(doctorUImage, _doctorImage);
  }

  Future setDoctorEmail(String doctorEmail) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorEmail = doctorEmail;
    await _localStorage.setString(doctorUEmail, _doctorEmail);
  }

  Future setDoctorGenderAndDOB({String gender, String dob}) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorGender = gender;
    _doctorDOB = dob;
    await _localStorage.setString(doctorUGender, _doctorGender);
    await _localStorage.setString(doctorUDOB, _doctorDOB);
  }

  Future setDoctorPhoneNumber(int phone) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorPhoneNumber = phone;
    print(_doctorPhoneNumber);
    await _localStorage.setInt(doctorUPhoneNumber, _doctorPhoneNumber);
  }

  Future setDoctorAddress(
      String state, String city, int pincode, String homeAddress) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorState = state;
    _doctorCity = city;
    _doctorPinCode = pincode;
    _doctorAddress = homeAddress;
    await _localStorage.setString(doctorUState, _doctorState);
    await _localStorage.setString(doctorUCity, _doctorCity);
    await _localStorage.setInt(doctorUPinCode, _doctorPinCode);
    await _localStorage.setString(doctorUAddress, _doctorAddress);
  }

  Future setDoctorSpecialization(List<String> specialization) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorSpecialization = specialization;
    await _localStorage.setStringList(
        doctorUSpecialization, _doctorSpecialization);
  }

  Future setDoctorOrganization(String organization) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorOrganization = organization;
    await _localStorage.setString(doctorUOrganization, _doctorOrganization);
  }

  Future setDoctorEducationId(String id) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorEducationId.add(id);
    await _localStorage.setStringList(doctorUEducationId, _doctorEducationId);
  }

  Future setDoctorEducation(
      String college,
      String degree,
      String educationField,
      String registrationNumber,
      String startYear,
      String endYear) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorEducationRegistrationNumber.add(registrationNumber);
    _doctorEducationStartYear.add(startYear);
    _doctorEducationEndYear.add(endYear);
    _doctorEducationDegree.add(degree);
    _doctorEducationCollege.add(college);
    _doctorEducationField.add(educationField);
    await _localStorage.setStringList(
        doctorUEducationRegistrationNumber, _doctorEducationRegistrationNumber);
    await _localStorage.setStringList(
        doctorUEducationStartYear, _doctorEducationStartYear);
    await _localStorage.setStringList(
        doctorUEducationDegree, _doctorEducationDegree);
    await _localStorage.setStringList(
        doctorUEducationEndYear, _doctorEducationEndYear);
    await _localStorage.setStringList(
        doctorUEducationCollege, _doctorEducationCollege);
    await _localStorage.setStringList(
        doctorUEducationField, _doctorEducationField);
  }

  Future setDoctorServices(List<String> service) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorService = service;
    await _localStorage.setStringList(doctorUService, _doctorService);
  }

  Future setDoctorClinicDetails(String id, String name, int phoneNumber) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorClinicId = id;
    _doctorClinicName = name;
    _doctorClinicPhoneNUmber = phoneNumber;
    await _localStorage.setString(doctorUClinicId, _doctorClinicId);
    await _localStorage.setString(doctorUClinicName, _doctorClinicName);
    await _localStorage.setInt(
        doctorUClinicPhoneNumber, _doctorClinicPhoneNUmber);
  }

  Future setDoctorExperienceId(String id) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorExperienceId.add(id);
    await _localStorage.setStringList(doctorUExperienceId, _doctorExperienceId);
  }

  Future setDoctorExperienceDetails(String title, String startYear,
      String endYear, String organization) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _doctorExperienceTitle.add(title);
    _doctorExperienceStartYear.add(startYear);
    _doctorExperienceEndYear.add(endYear);
    _doctorExperienceOrganization.add(organization);
    await _localStorage.setStringList(
        doctorUExperienceTitle, _doctorExperienceTitle);
    await _localStorage.setStringList(
        doctorUExperienceStartYear, _doctorExperienceStartYear);
    await _localStorage.setStringList(
        doctorUExperienceEndYear, _doctorExperienceEndYear);
    await _localStorage.setStringList(
        doctorUOrganization, _doctorExperienceOrganization);
  }

  // Get individual Getter from Local
  Future<int> getDoctorPhoneNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(doctorUPhoneNumber);
  }

  Future<String> getDoctorIdFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUId);
  }

  Future<String> getDoctorNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUName);
  }

  Future<Uint8List> getDoctorImageFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickerHelperService _filePickerHelperService =
        locator<FilePickerHelperService>();
    return _filePickerHelperService
        .dataFromBase64String(_localStorage.getString(doctorUImage));
  }

  Future<String> getDoctorDOBFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUDOB);
  }

  Future<String> getDoctorGenderFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUGender);
  }

  Future<String> getDoctorEmailFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUEmail);
  }

  Future<String> getDoctorStateFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUState);
  }

  Future<String> getDoctorCityFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUCity);
  }

  Future<String> getDoctorAddressFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUAddress);
  }

  Future<int> getDoctorPinCodeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(doctorUPinCode);
  }

  Future<List<String>> getDoctorSpecializationFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUSpecialization);
  }

  Future<String> getDoctorOrganizationFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUOrganization);
  }

  Future<List<String>> getDoctorEducationIdfromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationId);
  }

  Future<List<String>> getDoctorEducationRegistrationNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationRegistrationNumber);
  }

  Future<List<String>> getDoctorEducationCollegeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationCollege);
  }

  Future<List<String>> getDoctorEducationDegreeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationDegree);
  }

  Future<List<String>> getDoctorEducationStartYearFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationStartYear);
  }

  Future<List<String>> getDoctorEducationEndYearFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationEndYear);
  }

  Future<List<String>> getDoctorEducationFieldFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUEducationField);
  }

  Future<List<String>> getdoctorExperienceIdFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUExperienceId);
  }

  Future<List<String>> getDoctorExperienceTitleFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUExperienceTitle);
  }

  Future<List<String>> getDoctorExperienceStartYearFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUExperienceStartYear);
  }

  Future<List<String>> getDoctorExperienceEndYearFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUExperienceEndYear);
  }

  Future<List<String>> getDoctorExperienceOrganizationFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUExperienceOrganization);
  }

  Future<List<String>> getDoctorServiceFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getStringList(doctorUService);
  }

  Future<String> getDoctorClinicIdromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUClinicId);
  }

  Future<String> getDoctorClinicNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUClinicName);
  }

  Future<String> getDoctorClinicPhoneNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(doctorUClinicPhoneNumber);
  }

  // Getters for all user details from local

  Future<Map<String, dynamic>> getAllUserDetailsFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();

    return {
      doctorUId: _localStorage.getString(doctorUId),
      doctorUName: _localStorage.getString(doctorUName),
      doctorUImage: _localStorage.getString(doctorUImage),
      doctorUDOB: _localStorage.getString(doctorUDOB),
      doctorUPhoneNumber: _localStorage.getInt(doctorUPhoneNumber).toString(),
      doctorUGender: _localStorage.getString(doctorUGender),
      doctorUEmail: _localStorage.getString(doctorUEmail),
      doctorUState: _localStorage.getString(doctorUState),
      doctorUCity: _localStorage.getString(doctorUCity),
      doctorUPinCode: _localStorage.getInt(doctorUPinCode).toString(),
      doctorUAddress: _localStorage.getString(doctorUAddress),
      doctorUSpecialization: _localStorage.getStringList(doctorUSpecialization),
      doctorUOrganization: _localStorage.getString(doctorUOrganization),
      doctorUEducationId: _localStorage.getStringList(doctorUEducationId),
      doctorUEducationRegistrationNumber:
          _localStorage.getStringList(doctorUEducationRegistrationNumber),
      doctorUEducationCollege:
          _localStorage.getStringList(doctorUEducationCollege),
      doctorUEducationDegree:
          _localStorage.getStringList(doctorUEducationDegree),
      doctorUEducationStartYear:
          _localStorage.getStringList(doctorUEducationStartYear),
      doctorUEducationEndYear:
          _localStorage.getStringList(doctorUEducationEndYear),
      doctorUEducationField: _localStorage.getStringList(doctorUEducationField),
      doctorUExperienceId: _localStorage.getStringList(doctorUExperienceId),
      doctorUExperienceTitle:
          _localStorage.getStringList(doctorUExperienceTitle),
      doctorUExperienceStartYear:
          _localStorage.getStringList(doctorUExperienceStartYear),
      doctorUExperienceEndYear:
          _localStorage.getStringList(doctorUExperienceEndYear),
      doctorUExperienceOrganization:
          _localStorage.getStringList(doctorUExperienceOrganization),
      doctorUService: _localStorage.getStringList(doctorUService),
      doctorUClinicId: _localStorage.getString(doctorUClinicId),
      doctorUClinicName: _localStorage.getString(doctorUClinicName),
      doctorUClinicPhoneNumber:
          _localStorage.getInt(doctorUClinicPhoneNumber).toString(),
    };
  }

  // Set all details to null
  void setAllToNull() {
    _doctorId = null;
    _doctorName = null;
    _doctorImage = null;
    _doctorDOB = null;
    _doctorPhoneNumber = null;
    _doctorGender = null;
    _doctorEmail = null;
    _doctorState = null;
    _doctorCity = null;
    _doctorPinCode = null;
    _doctorAddress = null;
    _doctorSpecialization = null;
    _doctorOrganization = null;
    _doctorEducationId = null;
    _doctorEducationRegistrationNumber = null;
    _doctorEducationCollege = null;
    _doctorEducationDegree = null;
    _doctorEducationStartYear = null;
    _doctorEducationEndYear = null;
    _doctorEducationField = null;
    _doctorExperienceId = null;
    _doctorExperienceTitle = null;
    _doctorExperienceStartYear = null;
    _doctorExperienceEndYear = null;
    _doctorExperienceOrganization = null;
    _doctorService = null;
    _doctorClinicId = null;
    _doctorClinicName = null;
    _doctorClinicPhoneNUmber = null;
  }
}
