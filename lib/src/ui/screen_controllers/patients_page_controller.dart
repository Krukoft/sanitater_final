import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../managers/data_Manager.dart';
import '../../models/patient_model.dart';

class PatientPageController extends ControllerMVC{

  DataManager dataManager;
  PatientPageController._privateConstruct(this.dataManager);

  static final PatientPageController _instance = PatientPageController._privateConstruct(DataManager());
  static PatientPageController get instance => _instance;
  factory PatientPageController(){
    return _instance;
  }
  List<Patient> patients = [];
  void initpage(){
    patients = dataManager.getPatients();
    print(patients);
  }
}