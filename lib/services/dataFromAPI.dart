import 'package:biolege/app/locator.dart';
import 'package:biolege/models/clinic.dart';
import 'package:biolege/models/doctor.dart';
import 'package:biolege/models/doctorCustormer.dart';
import 'package:biolege/services/api_service.dart';

import 'local_storage.dart';

class DataFromAPIService {
  final APIService _apiService = locator<APIService>();
  final StorageService _storageService = locator<StorageService>();

  // Mapping of patients(ID) with their details for faster access
  static Map<String, DoctorCustomer> _diagnosticCustomerOfDoctorsMapped;
  Map<String, DoctorCustomer> get getDiagnosticCustomersMappedList =>
      _diagnosticCustomerOfDoctorsMapped;
  Future setDiagnosticCustomersMappedList(
          Map<String, DoctorCustomer> x) async =>
      _diagnosticCustomerOfDoctorsMapped = x;

  // customer
  static List<DoctorCustomer> _diagnosticCustomersList;
  List<DoctorCustomer> get getDiagnosticCustomerList =>
      _diagnosticCustomersList;
  void setDiagnosticCustomerList(List<DoctorCustomer> x) =>
      _diagnosticCustomersList = x;
  void setDiagnosticCustomer(DoctorCustomer x) =>
      _diagnosticCustomersList.add(x);
  // data to be used globally for current doctor
  static Doctor _doctor;
  Doctor get getDoctor => _doctor;
  void setDoctor(Doctor d) => _doctor = d;

  // data to be displayed for the list of clinics
  static List<Clinic> _clinicList;
  List<Clinic> get getClinicList => _clinicList;
  // void setClinicList(List<Clinic> clist) => _clinicList = clist;

  // Mapping of Doctors(ID) with their clinic details
  static Map<String, ClinicElement> _clinicDetailsOfDoctor;
  Map<String, ClinicElement> get getClinicDetailsOfDoctor =>
      _clinicDetailsOfDoctor;

  // Get selected clinic
  static List<Clinic> _selectedClinic;
  List<Clinic> get getSelectedClinic => _selectedClinic;

  // Helper function
  Future setClinicList() async {
    _clinicList = [];
    _clinicList = await _apiService.getAllClinic();
    print("All clinics saved : " + _clinicList.toString());
  }

  // set selectedClinic
  Future<List<Clinic>> setSelectedClinic() async {
    // final docID = _storageService.getDoctorId;
    _selectedClinic = [];

    // _doctor.forEach(()=>);
    // _doctor.clinics.forEach((clinic) => _selectedClinic.add((clinic))
  }

  Future setDiagnosticCustomersList() async {
    _diagnosticCustomersList = [];
    _diagnosticCustomersList = await _apiService.getAllDiagnosticCustomers();
    print("All diagnostic customers saved");
  }
}
