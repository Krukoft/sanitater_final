import 'package:sanitater/src/models/patient_model.dart';

abstract class IDataAccess{
  List<Patient> getPatients();
  void addPatient(Patient patient);
  void deletePatient(Patient patient);
}


