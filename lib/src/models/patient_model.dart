import 'afection_model.dart';
import 'medicine_model.dart';

class Patient {
  final String id;
  final String name;
  final String age;
  final Afection afection;
  final Medicine medicine;

  Patient({
    required this.id,
    required this.name,
    required this.age,
    required this.afection,
    required this.medicine,
});

}