import 'package:biolege/services/File_picker_service.dart';
import 'package:biolege/services/api_service.dart';
import 'package:biolege/services/auth_service.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:biolege/services/local_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
@injectable
void setUpLocator() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => StorageService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => FilePickerHelperService());
  locator.registerLazySingleton(() => APIService());
  locator.registerLazySingleton(() => DataFromAPIService());
}
