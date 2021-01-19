import 'package:biolege/app/router.gr.dart';
import 'package:biolege/models/clinic.dart';
import 'package:biolege/models/doctor.dart';
import 'package:biolege/services/api_service.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:biolege/services/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import '../../../model/doctor.dart';
import '../../../app/locator.dart';
// import '../../../services/services/dataFromApi_service.dart';
// import '../../../screens/homeScreens/doctorsListTabScreens/doctorsProfileScreen/doctorsProfileScreenView.dart';
// import '../../../model/clinic.dart';
// import '../../../model/clinicEmployee.dart';
// import '../../../services/services/auth_service.dart';
// import '../../../services/services/local_storage.dart';

class SelectClinicScreenViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final DataFromAPIService _dataFromApiService = locator<DataFromAPIService>();
  final DialogService _dialogService = locator<DialogService>();
  final APIService _apiService = locator<APIService>();
  // final AuthenticationService _authenticationService =
  //     locator<AuthenticationService>();
  final StorageService _storageService = locator<StorageService>();
  // final Clinic _clinicDataService = locator<Clinic>();
  // final ClinicEmployee _clinicEmployeeDataService = locator<ClinicEmployee>();
  // final SnackbarService _snackBarService = locator<SnackbarService>();
  // __________________________________________________________________________
  // Controller and Variables
  TextEditingController searchedText = TextEditingController();
  final searchFormKey = GlobalKey<FormState>();
  List<Clinic> results = [];
  List<Clinic> clinicsList = [];
  Map<String, ClinicElement> clinicDetailsOfDoctor;
  // String docID = _storageService.getDoctorId;
  // __________________________________________________________________________
  // Helper functions

  void getClinicsList() async {
    setBusy(true);
    clinicsList = _dataFromApiService.getClinicList;
    // clinicDetailsOfDoctor = _dataFromApiService.getClinicDetailsOfDoctor;
    print(clinicsList);
    setBusy(false);
  }

  void search() {
    results.clear();
    print(searchedText);
    clinicsList.forEach((clinic) => {
          print(clinic.name),
          (clinic.name.toLowerCase().contains(searchedText.text.toLowerCase()))
              ? results.add(clinic)
              : null,
        });

    if (searchedText.text.length == 0) results.clear();
    notifyListeners();
  }

  void clinicDescriptionView(Clinic clinic) async {
    // _navigatorService.navigateToView()
  }
  // void navigateToMyChamber() {
  //   _navigatorService.navigateTo(Routes.myChamber);
  // }

  Future onSelected(Clinic clinic) async {
    final response = await _dialogService.showConfirmationDialog(
        confirmationTitle: "Yes",
        cancelTitle: "No",
        title: "Add Clinic",
        description: "Do you want to add this clinic to your Chamber");

    if (response != null) {
      _apiService.addDoctorClinic(
          docID: _storageService.getDoctorId,
          clinicname: clinic.name,
          clinicPhoneNumber: clinic.phoneNumber.toString(),
          day: null,
          startTime: null,
          endTime: null);
      _navigatorService.navigateTo(Routes.myChamber);
    }
  }
}
