import 'package:sanitater/interfaces/idata_access.dart';
import 'package:sanitater/data_access/data_dummy.dart';
import '../src/models/patient_model.dart';


  class DataManager {

    DataManager._privateConstruct(this.dataAccess);

    static final DataManager _instance = DataManager._privateConstruct(Dummy());
    static DataManager get instance => _instance;

    factory DataManager(){
      return _instance;

    }
    final IDataAccess dataAccess;
    List<Patient> getPatients(){
      return dataAccess.getPatients();

    }
    void addPatient(Patient patient){
      return dataAccess.addPatient(patient);
    }

  }