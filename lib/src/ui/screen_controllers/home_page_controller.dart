import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../managers/data_Manager.dart';
import '../../models/patient_model.dart';


class HomePageController extends ControllerMVC{
  DataManager? dataManager;
  HomePageController._privateConstruct(this.dataManager);

  static final HomePageController _instance = HomePageController._privateConstruct(DataManager());
  static HomePageController get instance => _instance;

  factory HomePageController(){
    return _instance;
  }
  List<Patient> patients = [];
  void initpage(){
    patients = dataManager!.getPatients();
  }
}

