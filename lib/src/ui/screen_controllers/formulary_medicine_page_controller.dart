import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../managers/data_Manager.dart';
import '../../models/medicine_model.dart';

class FormularyMedicinePageController extends ControllerMVC{
  late List<Medicine> medicines = [];

  DataManager dataManager;
  FormularyMedicinePageController._privateConstruct(this.dataManager){
    medicines = dataManager.getMedicines();//agragar en las otras vistas medicamentos,
  }

  static final FormularyMedicinePageController _instance = FormularyMedicinePageController._privateConstruct(DataManager());
  //static PatientPageController get instance => _instance;
  factory FormularyMedicinePageController(){
    return _instance;
  }

  void initpage(){}

  addMedicine(context){
    return Navigator.maybePop(context);
  }

}