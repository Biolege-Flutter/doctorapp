import 'package:biolege/app/locator.dart';
import 'package:biolege/services/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../app/router.gr.dart';

import 'package:stacked_services/stacked_services.dart';

class MyAccountViewModel extends BaseViewModel {
  final NavigationService _navigate = locator<NavigationService>();
  final StorageService _storageService = locator<StorageService>();

  void navigateToProfileScreen() {
    String docID = _storageService.getDoctorId;
    _navigate.navigateTo(Routes.doctorsProfileScreenView);
  }

  void navigateToPatientScreen() {
    _navigate.navigateTo(Routes.patients);
  }

  void navigateToArticleScreen() {
    _navigate.navigateTo(Routes.articleView);
  }

  void navigateToMyChamberScreen() {
    _navigate.navigateTo(Routes.myChamber);
  }
}
