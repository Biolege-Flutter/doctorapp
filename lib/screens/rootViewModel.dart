import 'package:biolege/app/router.gr.dart';
import 'package:biolege/services/api_service.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/local_storage.dart';
import '../app/locator.dart';
import '../services/auth_service.dart';

class RootViewModel extends BaseViewModel {
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final StorageService _storageService = locator<StorageService>();
  final DataFromAPIService _dataFromApiService = locator<DataFromAPIService>();
  final APIService _apiService = locator<APIService>();

  // __________________________________________________________________________
  // Reroutes the user to either EmailScreenView or OnBoarding Screen

  Future handleStartupLogic() async {
    var hasLoggedIn = await _authenticationService.isUserLoggedIn();
    print(hasLoggedIn);

    // To be used when the user is filling up the detail
    await _storageService.initLocalStorage();

    await _dataFromApiService.setClinicList();

    if (hasLoggedIn) {
      if (_storageService.getDoctorName == null)
        _navigatorService.clearStackAndShow(Routes.nameScreenView);
      else if (_storageService.getDoctorEmail == null)
        _navigatorService.clearStackAndShow(Routes.emailScreenView);
      else if (_storageService.getDoctorDOB == null)
        _navigatorService.clearStackAndShow(Routes.genderScreenView);
      else if (_storageService.getDoctorAddress == null)
        _navigatorService.clearStackAndShow(Routes.addressScreenView);
      else {
        await _dataFromApiService.setSelectedClinic();
        // await _apiService.createDoctor();
        _navigatorService.clearStackAndShow(Routes.welcomeScreenView);
      }
    } else
      _navigatorService.navigateTo(Routes.onBoardingScreen);
  }
}
