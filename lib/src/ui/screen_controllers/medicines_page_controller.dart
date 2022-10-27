
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screens/formulary_medicine_page.dart';
import '../../../managers/data_Manager.dart';
import '../../models/medicine_model.dart';
import '../screens/formulary_patients_page.dart';

class MedicinesPageController extends ControllerMVC{
  late List<Medicine> medicines = [];

  DataManager dataManager;
  MedicinesPageController._privateConstruct(this.dataManager){
    medicines = dataManager.getMedicines();//agragar en las otras vistas medicamentos,
  }

  static final MedicinesPageController _instance = MedicinesPageController._privateConstruct(DataManager());
  //static PatientPageController get instance => _instance;
  factory MedicinesPageController(){
    return _instance;
  }

  void initpage(){}

  onCancelPopUp(context){
    return Navigator.maybePop(context);
  }
  goFormularyMedicine(context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const FormularyMedicinePage()));
  }

  deleteMedicine(context){
    return Navigator.maybePop(context);
  }

}