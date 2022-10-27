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
      Patient(id: '1', name: 'Masdad', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'Jarabe para la tos', typeMedicine: 'jarabe', id: 1,stockMedicine: 0)),
      Patient(id: '3', name: 'Manuel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'Vitaminas', typeMedicine: 'Comprimidos', id: 2,stockMedicine: 6)),
      Patient(id: '12', name: 'Manuel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'Paracetamol', typeMedicine: 'Comprimidos', id: 9,stockMedicine: 200)),
      Patient(id: '142', name: 'Manaduasdel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'Curitas', typeMedicine: 'Enfermería', id: 4,stockMedicine: 15)),
      Patient(id: '244', name: 'Madel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine:  Medicine(name: 'Vitaminas', typeMedicine: 'Comprimidos', id: 2,stockMedicine: 6)),
      Patient(id: '9', name: 'Madsel', age: '23', afection: Afection(id: '1', nameAfection: 'tos'), medicine: Medicine(name: 'Jarabe para la tos', typeMedicine: 'jarabe', id: 1,stockMedicine: 0)),
    ];
  }

  @override
  List<Medicine> getMedicines(){
    return[
      Medicine(name: 'Jarabe para la tos', typeMedicine: 'jarabe', id: 1,stockMedicine: 0),
      Medicine(name: 'Vitaminas', typeMedicine: 'Comprimidos', id: 2,stockMedicine: 6),
      Medicine(name: 'Ibuprofeno 500ml', typeMedicine: 'Comprimidos', id: 3,stockMedicine: 20),
      Medicine(name: 'Curitas', typeMedicine: 'Enfermería', id: 4,stockMedicine: 15),
      Medicine(name: 'Lotrial D', typeMedicine: 'Comprimidos', id: 5,stockMedicine: 30),
      Medicine(name: 'Desinfectante', typeMedicine: 'Enfermería', id: 6,stockMedicine: 5),
      Medicine(name: 'Barbijos', typeMedicine: 'Guantes', id: 8,stockMedicine: 200),
      Medicine(name: 'Paracetamol', typeMedicine: 'Comprimidos', id: 9,stockMedicine: 200),
      Medicine(name: 'jarabe', typeMedicine: 'oral', id: 1,stockMedicine: 0),
      Medicine(name: 'Jarabe para la tos', typeMedicine: 'jarabe', id: 1,stockMedicine: 0),
      Medicine(name: 'Vitaminas', typeMedicine: 'Comprimidos', id: 2,stockMedicine: 6),
      Medicine(name: 'Ibuprofeno 500ml', typeMedicine: 'Comprimidos', id: 3,stockMedicine: 20),
      Medicine(name: 'Curitas', typeMedicine: 'Enfermería', id: 4,stockMedicine: 15),
      Medicine(name: 'Lotrial D', typeMedicine: 'Comprimidos', id: 5,stockMedicine: 30),
      Medicine(name: 'Desinfectante', typeMedicine: 'Enfermería', id: 6,stockMedicine: 5),
      Medicine(name: 'Barbijos', typeMedicine: 'Guantes', id: 8,stockMedicine: 200),
      Medicine(name: 'Paracetamol', typeMedicine: 'Comprimidos', id: 9,stockMedicine: 200)
    ];


  }

}