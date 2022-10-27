import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../managers/data_Manager.dart';
import '../../models/patient_model.dart';

class FormularyPatientsPageController extends ControllerMVC{
  late List<Patient> patients = [];

  DataManager dataManager;
  FormularyPatientsPageController._privateConstruct(this.dataManager){
    patients = dataManager.getPatients();    //agregar en las otras vistas medicamentos,
  }

  static final FormularyPatientsPageController _instance = FormularyPatientsPageController._privateConstruct(DataManager());
  //static PatientPageController get instance => _instance;
  factory FormularyPatientsPageController(){
    return _instance;
  }

  void initpage(){}

}