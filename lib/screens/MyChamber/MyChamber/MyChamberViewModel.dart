import 'package:biolege/app/locator.dart';
import 'package:biolege/app/router.gr.dart';
import 'package:biolege/models/clinic.dart';
// import 'package:biolege/services/api_service.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyChamberViewModel extends FutureViewModel<List<Clinic>> {
  final NavigationService _navigate = locator<NavigationService>();
  // final APIService _apiService = locator<APIService>();
  final DataFromAPIService _dataFromAPI = locator<DataFromAPIService>();

  List<Clinic> list;
  // List clist = ["abb", "adv"];
  @override
  Future<List<Clinic>> futureToRun() async {
    try {
      return _dataFromAPI.getSelectedClinic;
    } catch (e) {
      print(" ");
    }
    throw UnimplementedError();
  }

  void navigateToSelectScreen() {
    _navigate.navigateTo(Routes.detailsDisplay);
  }

  void navigateToSelectClinicScreen() {
    _navigate.navigateTo(Routes.selectClinicScreen);
  }
}
