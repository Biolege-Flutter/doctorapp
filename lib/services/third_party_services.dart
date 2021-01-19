// import 'services/filePicker_service.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
// import 'services/api_service.dart';
import './auth_service.dart';
import './local_storage.dart';
import 'File_picker_service.dart';
import 'api_service.dart';
import 'dataFromAPI.dart';

abstract class ThirdPartyServicesModule {
  @lazySingleton
  // Servies for navigation
  NavigationService get navigationService;
  // Servies for navigation
  ThemeService get themeService;

  AuthenticationService get authenticationService;
  StorageService get localStorageService;
  APIService get aPIServices;
  DialogService get dialogService;
  SnackbarService get snackbarService;
  FilePickerHelperService get filePickHelperService;
  DataFromAPIService get dataFromAPIService;
}
