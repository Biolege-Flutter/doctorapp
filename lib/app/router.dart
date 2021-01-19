import 'package:auto_route/auto_route_annotations.dart';
// import 'package:biolege/MyAccount.dart';

//chailexcommented
// import 'package:biolege/PatientDetailsInfo.dart';
// import 'package:biolege/Patients.dart';

import 'package:biolege/screens/MyAccount/myAccountView.dart';
import 'package:biolege/screens/MyChamber/DetailsDisplay/DetailsDisplayView.dart';
// import 'package:biolege/screens/MyChamber/MyChamber.dart';
import 'package:biolege/screens/MyChamber/MyChamber/MyChamberView.dart';
// import 'package:biolege/screens/MyChamber/selectClinicForDoctotScreen/selectClinicScreen.dart';
import 'package:biolege/screens/MyChamber/selectDoctorForClinicScreen/selectClinicScreen.dart';
import 'package:biolege/screens/addDoctorProfileScreen/addressScreen/addressScreenView.dart';
import 'package:biolege/screens/addDoctorProfileScreen/emailScreen/emailScreenView.dart';
import 'package:biolege/screens/addDoctorProfileScreen/genderScreen/genderScreenView.dart';
import 'package:biolege/screens/addDoctorProfileScreen/nameScreen/nameScreenView.dart';
import 'package:biolege/screens/articles/articlesView.dart';
import 'package:biolege/screens/articles/editArticcle/editArticleView.dart';
import 'package:biolege/screens/doctorsProfileScreen/doctorsProfileScreenView.dart';
import 'package:biolege/screens/homeScreen/homeScreenView.dart';
import 'package:biolege/screens/notification/notificationView.dart';
import 'package:biolege/screens/onBoardingScreen/onBoardingScreenView.dart';
import 'package:biolege/screens/signUpScreens/otpScreen/otpScreenView.dart';
import 'package:biolege/screens/signUpScreens/phoneNumberScreen/phoneScreenView.dart';
import 'package:biolege/screens/welcomeScreen/welcomeScreenView.dart';
import 'package:flutter/cupertino.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case 'OnBoardingRoute':
//       return MaterialPageRoute(builder: (_) => OnBoardingScreen());
//     case 'PhoneScreenRoute':
//       return MaterialPageRoute(builder: (_) => PhoneScreenView());
//     case 'OTPScreenRoute':
//       return MaterialPageRoute(builder: (_) => OTPScreenView());
//     case 'NameScreenRoute':
//       return MaterialPageRoute(builder: (_) => NameScreenView());
//     case 'GenderScreenRoute':
//       return MaterialPageRoute(builder: (_) => GenderScreenView());
//     case 'AddressScreenRoute':
//       return MaterialPageRoute(builder: (_) => AddressScreenView());
//     case 'EmailScreenRoute':
//       return MaterialPageRoute(builder: (_) => EmailScreenView());
//     // case 'AppointmentScreenRoute':
//     //   return MaterialPageRoute(builder: (_) => AppointmentScreenView());
//     default:
//       print("No cases selected");
//   }
// }
@MaterialAutoRouter(routes: <AutoRoute>[
  // ___________________________________________________________________________
  MaterialRoute(
    path: 'onBoardingScreen',
    page: OnBoardingScreen,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: 'phoneScreen',
    page: PhoneScreenView,
  ),
  MaterialRoute(
    path: 'otpScreen',
    page: OTPScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: 'nameScreen',
    page: NameScreenView,
  ),
  MaterialRoute(
    path: 'genderScreen',
    page: GenderScreenView,
  ),
  MaterialRoute(
    path: 'emailScreen',
    page: EmailScreenView,
  ),
  MaterialRoute(
    path: 'addressScreen',
    page: AddressScreenView,
  ),
  MaterialRoute(
    path: 'welcomeScreen',
    page: WelcomeScreenView,
  ),
  MaterialRoute(
    path: 'homeScreen',
    page: HomeScreenView,
  ),
  //chailexcommented
  // MaterialRoute(
  //   path: 'patientDetailsInfo',
  //   page: PatientDetailsInfo,
  // ),
  MaterialRoute(
    path: 'myChamber',
    page: MyChamber,
  ),
  MaterialRoute(
    path: 'myAccount',
    page: MyAccountView,
  ),
  MaterialRoute(
    path: 'doctorProfileScreenView',
    page: DoctorsProfileScreenView,
  ),
  MaterialRoute(
    path: 'selectClinicScreen',
    page: SelectClinicScreen,
  ),
  MaterialRoute(
    path: 'detailsDisplay',
    page: DetailsDisplay,
  ),
  //chailexcommented
  // MaterialRoute(
  //   path: 'patient',
  //   page: Patients,
  // ),
  MaterialRoute(
    path: 'articleView',
    page: ArticleView,
  ),
  MaterialRoute(
    path: 'editArticle',
    page: EditArticleView,
  ),
  MaterialRoute(
    path: 'notificationView',
    page: NotificationView,
  ),
])
class $Router {}
