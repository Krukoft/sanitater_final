import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screens/formulary_patients.dart';
import '../../../managers/data_Manager.dart';
import '../../models/patient_model.dart';

class PatientPageController extends ControllerMVC{
  late List<Patient> patients = [];

  DataManager dataManager;
  PatientPageController._privateConstruct(this.dataManager){
    patients = dataManager.getPatients();//agragar en las otras vistas medicamentos,
  }

  static final PatientPageController _instance = PatientPageController._privateConstruct(DataManager());
  //static PatientPageController get instance => _instance;
  factory PatientPageController(){
    return _instance;
  }

  void initpage(){}

  onCancelPopUp(context){
    return Navigator.maybePop(context);
  }

  deletePatient(context){
    return Navigator.maybePop(context);
  }

  goFormularyPatient(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const FormularyPatients()));
  }

}
/*goLaboralDaysPage(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LaboralDaysPage()));

  }
  meter en el boton
  onTap: (){
  _con._con.goLaboralDaysPage(context);
  }

  */