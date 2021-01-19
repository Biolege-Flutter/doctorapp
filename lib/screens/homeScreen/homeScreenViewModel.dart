// import 'package:biolege/PatientDetailsInfo.dart';
//chailexcommented
// import 'package:biolege/Patients.dart';

import 'package:biolege/screens/MyAccount/myAccountView.dart';
import 'package:biolege/screens/MyChamber/MyChamber/MyChamberView.dart';
import 'package:biolege/screens/notification/notificationView.dart';
// import 'package:biolege/services/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';
// import 'doctorsListTabScreens/doctorsListScreen/doctorListScreenView.dart';
// import 'appointmentHomeScreen/appointmentHomeScreenView.dart';
// import '../../app/locator.dart';
// import '../../services/services/local_storage.dart';
// import '../../model/clinic.dart';
// import '../../model/clinicEmployee.dart';
// import '../../services/services/auth_service.dart';
// import '../../services/services/dataFromApi_service.dart';

class HomeScreenViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  // final StorageService _storageService = locator<StorageService>();
  // final SnackbarService _snackBarService = locator<SnackbarService>();
  // final NavigationService _navigatorService = locator<NavigationService>();
  // final AuthenticationService _authenticationService =
  //     locator<AuthenticationService>();
  // final Clinic _clinicDataService = locator<Clinic>();
  // final ClinicEmployee _clinicEmployeeDataService = locator<ClinicEmployee>();
  // final DataFromApi _dataFromApiService = locator<DataFromApi>();

  // __________________________________________________________________________
  // Data for the UI

  //__________________________________________________________________________

  final List<Widget> widgetOptions = [
    //chailexcommented
    // Patients(),
    MyChamber(),
    NotificationView(),
    MyAccountView(),
  ];

  final PageController pageController = PageController();
  int _index = 0;

  int get getIndex => _index;

  List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(MaterialIcons.assignment), label: 'Appointments'),
    BottomNavigationBarItem(
        icon: Icon(Icons.location_city), label: 'My chamber'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesome.bell), label: 'Notifications'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesome.user_circle), label: 'Profile'),
  ];

  void setCurrentIndexForPageView(int selIndex) {
    _index = selIndex;
    pageController.animateToPage(selIndex,
        duration: Duration(milliseconds: 300), curve: Curves.elasticInOut);
    notifyListeners();
  }

  void selectCurrentPageForNavBar(int selIndex) {
    _index = selIndex;
    notifyListeners();
  }

  // Future<String> futureToRun() async {
  //   try {
  //     // return _storageService.getClinicName;
  //   } catch (e) {
  //     _snackBarService.showSnackbar(message: e.toString());
  //     throw UnimplementedError(e.toString());
  //   }
  // }
}
