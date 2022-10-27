import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screens/works_page.dart';
import '../../../managers/data_Manager.dart';
import '../../models/patient_model.dart';
import '../screens/laboral_days_page.dart';
import '../screens/onboarding_page.dart';
import '../screens/patients_page.dart';


class HomePageController extends ControllerMVC{
  DataManager? dataManager;
  HomePageController._privateConstruct(this.dataManager);

  static final HomePageController _instance = HomePageController._privateConstruct(DataManager());
  static HomePageController get instance => _instance;

  factory HomePageController(){
    return _instance;
  }
  List<Patient> patients = [];
  void initpage(){}

  onBoardingSkip(context){
    return Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingPage())
    );
  }
  goLaboralDayPage(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LaboralDaysPage()));
  }

  goPatientsPage(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PatientsPage()));
  }

  goWorkPage(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => WorksPage()));
  }

}

