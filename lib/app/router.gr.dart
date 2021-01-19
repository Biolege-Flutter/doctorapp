// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

//chailexcommented
// import '../PatientDetailsInfo.dart';
// import '../Patients.dart';

import '../models/clinic.dart';
import '../screens/MyAccount/myAccountView.dart';
import '../screens/MyChamber/DetailsDisplay/DetailsDisplayView.dart';
import '../screens/MyChamber/MyChamber/MyChamberView.dart';
import '../screens/MyChamber/selectDoctorForClinicScreen/selectClinicScreen.dart';
import '../screens/addDoctorProfileScreen/addressScreen/addressScreenView.dart';
import '../screens/addDoctorProfileScreen/emailScreen/emailScreenView.dart';
import '../screens/addDoctorProfileScreen/genderScreen/genderScreenView.dart';
import '../screens/addDoctorProfileScreen/nameScreen/nameScreenView.dart';
import '../screens/articles/articlesView.dart';
import '../screens/articles/editArticcle/editArticleView.dart';
import '../screens/doctorsProfileScreen/doctorsProfileScreenView.dart';
import '../screens/homeScreen/homeScreenView.dart';
import '../screens/notification/notificationView.dart';
import '../screens/onBoardingScreen/onBoardingScreenView.dart';
import '../screens/signUpScreens/otpScreen/otpScreenView.dart';
import '../screens/signUpScreens/phoneNumberScreen/phoneScreenView.dart';
import '../screens/welcomeScreen/welcomeScreenView.dart';

class Routes {
  static const String onBoardingScreen = 'onBoardingScreen';
  static const String phoneScreenView = 'phoneScreen';
  static const String oTPScreenView = 'otpScreen';
  static const String nameScreenView = 'nameScreen';
  static const String genderScreenView = 'genderScreen';
  static const String emailScreenView = 'emailScreen';
  static const String addressScreenView = 'addressScreen';
  static const String welcomeScreenView = 'welcomeScreen';
  static const String homeScreenView = 'homeScreen';
  static const String patientDetailsInfo = 'patientDetailsInfo';
  static const String myChamber = 'myChamber';
  static const String myAccountView = 'myAccount';
  static const String doctorsProfileScreenView = 'doctorProfileScreenView';
  static const String selectClinicScreen = 'selectClinicScreen';
  static const String detailsDisplay = 'detailsDisplay';
  static const String patients = 'patient';
  static const String articleView = 'articleView';
  static const String editArticleView = 'editArticle';
  static const String notificationView = 'notificationView';
  static const all = <String>{
    onBoardingScreen,
    phoneScreenView,
    oTPScreenView,
    nameScreenView,
    genderScreenView,
    emailScreenView,
    addressScreenView,
    welcomeScreenView,
    homeScreenView,
    patientDetailsInfo,
    myChamber,
    myAccountView,
    doctorsProfileScreenView,
    selectClinicScreen,
    detailsDisplay,
    patients,
    articleView,
    editArticleView,
    notificationView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.phoneScreenView, page: PhoneScreenView),
    RouteDef(Routes.oTPScreenView, page: OTPScreenView),
    RouteDef(Routes.nameScreenView, page: NameScreenView),
    RouteDef(Routes.genderScreenView, page: GenderScreenView),
    RouteDef(Routes.emailScreenView, page: EmailScreenView),
    RouteDef(Routes.addressScreenView, page: AddressScreenView),
    RouteDef(Routes.welcomeScreenView, page: WelcomeScreenView),
    RouteDef(Routes.homeScreenView, page: HomeScreenView),
    //chailexcommented
    // RouteDef(Routes.patientDetailsInfo, page: PatientDetailsInfo),
    RouteDef(Routes.myChamber, page: MyChamber),
    RouteDef(Routes.myAccountView, page: MyAccountView),
    RouteDef(Routes.doctorsProfileScreenView, page: DoctorsProfileScreenView),
    RouteDef(Routes.selectClinicScreen, page: SelectClinicScreen),
    RouteDef(Routes.detailsDisplay, page: DetailsDisplay),
    //chailexcommented
    // RouteDef(Routes.patients, page: Patients),
    RouteDef(Routes.articleView, page: ArticleView),
    RouteDef(Routes.editArticleView, page: EditArticleView),
    RouteDef(Routes.notificationView, page: NotificationView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    OnBoardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
      );
    },
    PhoneScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PhoneScreenView(),
        settings: data,
      );
    },
    OTPScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OTPScreenView(),
        settings: data,
      );
    },
    NameScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NameScreenView(),
        settings: data,
      );
    },
    GenderScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GenderScreenView(),
        settings: data,
      );
    },
    EmailScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmailScreenView(),
        settings: data,
      );
    },
    AddressScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddressScreenView(),
        settings: data,
      );
    },
    WelcomeScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeScreenView(),
        settings: data,
      );
    },
    HomeScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreenView(),
        settings: data,
      );
    },
    //chailexcommented
    // PatientDetailsInfo: (data) {
    //   return MaterialPageRoute<dynamic>(
    //     builder: (context) => PatientDetailsInfo(),
    //     settings: data,
    //   );
    // },
    MyChamber: (data) {
      final args = data.getArgs<MyChamberArguments>(
        orElse: () => MyChamberArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyChamber(clinic: args.clinic),
        settings: data,
      );
    },
    MyAccountView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyAccountView(),
        settings: data,
      );
    },
    DoctorsProfileScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DoctorsProfileScreenView(),
        settings: data,
      );
    },
    SelectClinicScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SelectClinicScreen(),
        settings: data,
      );
    },
    DetailsDisplay: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailsDisplay(),
        settings: data,
      );
    },
    //chailexcommented
    // Patients: (data) {
    //   return MaterialPageRoute<dynamic>(
    //     builder: (context) => Patients(),
    //     settings: data,
    //   );
    // },
    ArticleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ArticleView(),
        settings: data,
      );
    },
    EditArticleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditArticleView(),
        settings: data,
      );
    },
    NotificationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MyChamber arguments holder class
class MyChamberArguments {
  final Clinic clinic;
  MyChamberArguments({this.clinic});
}
