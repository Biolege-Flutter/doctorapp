import 'package:biolege/app/locator.dart';
import 'package:biolege/models/clinic.dart';
import 'package:biolege/models/doctor.dart';
import 'package:biolege/models/doctorCustormer.dart';
import 'package:biolege/services/dataFromAPI.dart';
import 'package:biolege/services/helperDataService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class PatientsViewModel extends FutureViewModel{
   // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final DataFromAPIService _dataFromApiService = locator<DataFromAPIService>();
  final DoctorAppointments _doctorAppointmentsDetailservice =
      locator<DoctorAppointments>();

  List<DoctorCustomer> customerDoctor = [];
  List<DoctorCustomer> temporaryList = [];
  List<DoctorCustomer> customerForSelectedDateDoctor = [];
  Doctor selectedDoctor;
  Clinic _clinic;


void refresh() {
    setBusy(true);
    temporaryList.clear();
    customerDoctor.clear();
    DateTime x =
        _doctorAppointmentsDetailservice.getSelectedDateInAppointmentTab;
    selectedDoctor = _doctorAppointmentsDetailservice.getSelectedDoctor();

    Map<String, DoctorCustomer> mapped =
        _dataFromApiService.getDiagnosticCustomersMappedList;
        

    selectedDoctor.customers.forEach((customer) => ((customer.appointmentDate
                .any((dt) =>
                    dt.date.day == x.day && dt.date.month == x.month)) ==
            true)
        ? temporaryList.add(mapped[customer.id])
        : null);

    temporaryList.forEach((dgcCustomer) {
      dgcCustomer.doctors.forEach((x) => (x.clinic.id == _clinic.id)
          ? customerDoctor.add(dgcCustomer)
          : null);
    });

    setBusy(false);
    notifyListeners();
  }


  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }


}