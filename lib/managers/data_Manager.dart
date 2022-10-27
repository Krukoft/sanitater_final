import 'package:sanitater/interfaces/idata_access.dart';
import 'package:sanitater/data_access/data_dummy.dart';
import '../src/models/medicine_model.dart';
import '../src/models/patient_model.dart';


  class DataManager {
    final IDataAccess dataAccess;
    DataManager._privateConstruct(this.dataAccess);

    static final DataManager _instance = DataManager._privateConstruct(Dummy());
    static DataManager get instance => _instance;

    factory DataManager(){
      return _instance;

    }

    List<Patient>getPatients(){
      return dataAccess.getPatients();

    }
    void addPatient(Patient patient){
      return dataAccess.addPatient(patient);
    }

    List<Medicine>getMedicines() {
      return dataAccess.getMedicines();
    }


  }