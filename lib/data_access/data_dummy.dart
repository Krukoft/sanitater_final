import 'package:sanitater/interfaces/idata_access.dart';
import 'package:sanitater/src/models/medicine_model.dart';
import 'package:sanitater/src/models/patient_model.dart';
import '../src/models/afection_model.dart';


class Dummy implements IDataAccess{
  Dummy();
  @override
  void addPatient(Patient patient) {
    // TODO: implement addPatient
  }

  @override
  void deletePatient(Patient patient) {
    // TODO: implement deletePatient
  }

  @override
  List<Patient> getPatients() {
    return [
      Patient(id: '1', name: 'Masdad', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
      Patient(id: '3', name: 'Manuel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
      Patient(id: '12', name: 'Manuel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
      Patient(id: '142', name: 'Manaduasdel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
      Patient(id: '244', name: 'Madel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
      Patient(id: '9', name: 'Madsel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'jarabe', typeMedicine: 'bebible')),
    ];
  }

}