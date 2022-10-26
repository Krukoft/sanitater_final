import 'package:flutter/material.dart';
import 'package:sanitater/src/models/afection_model.dart';
import 'package:sanitater/src/models/medicine_model.dart';
import '../../models/patient_model.dart';

class PatientsPage extends StatefulWidget {

  const PatientsPage({Key? key}) : super(key: key);

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  List<Patient> patientsList = [
    Patient(id: 2, name: 'ivan martearena', age: 25, afection: Afection(id: 1, name: 'asma') , medicine: Medicine(name: 'respirador', typeMedicine: 'a'),),
    Patient(id: 2, name: 'Luis Perez', age: 85, afection: Afection(id: 1, name: 'fiebre') , medicine: Medicine(name: 'novalgina', typeMedicine: 'or'),),
    Patient(id: 2, name: 'juan Arola ', age: 15, afection: Afection(id: 1, name: 'quebradura') , medicine: Medicine(name: 'enyesado', typeMedicine: 'ol'),),
    Patient(id: 2, name: 'sergio martinez', age: 85, afection: Afection(id: 1, name: 'quemadura') , medicine: Medicine(name: 'curacion de herida', typeMedicine: 'l'),),
    Patient(id: 2, name: 'sofia lera', age: 35, afection: Afection(id: 1, name: 'resfrio') , medicine: Medicine(name: 'refrianex 500ml', typeMedicine: 'ral'),),
    Patient(id: 2, name: 'ina hinojosa', age: 67, afection: Afection(id: 1, name: 'covid') , medicine: Medicine(name: 'respirador', typeMedicine: 'o'),),
    Patient(id: 2, name: 'antonella jauregui', age: 22, afection: Afection(id: 1, name: 'embarazo') , medicine: Medicine(name: 'trabajo de parto', typeMedicine: 'a'),),
    Patient(id: 2, name: 'narciso martinez', age: 08, afection: Afection(id: 1, name: 'fiebre') , medicine: Medicine(name: 'novalgina', typeMedicine: 'or'),),
    Patient(id: 2, name: 'facuando anagua ', age: 23, afection: Afection(id: 1, name: 'ulceras') , medicine: Medicine(name: 'limpieza de heridas', typeMedicine: 'ol'),),
    Patient(id: 2, name: 'estaban eheverria', age: 39, afection: Afection(id: 1, name: 'desgarro') , medicine: Medicine(name: 'esperar diagnostico medico', typeMedicine: 'l'),),
    Patient(id: 2, name: 'barbara nieto', age: 44, afection: Afection(id: 1, name: 'accidente') , medicine: Medicine(name: 'cuidados intensivos', typeMedicine: 'ral'),),
    Patient(id: 2, name: 'fabio pegini', age: 53, afection: Afection(id: 1, name: 'dedo amputado') , medicine: Medicine(name: 'sutura de heridas', typeMedicine: 'o'),),
    Patient(id: 2, name: 'martin ramos', age: 70, afection: Afection(id: 1, name: 'vacunacion') , medicine: Medicine(name: 'inyeccion', typeMedicine: 'a'),),
    Patient(id: 2, name: 'esteban roman', age: 93, afection: Afection(id: 1, name: 'quebradura') , medicine: Medicine(name: 'enyesado', typeMedicine: 'or'),),
    Patient(id: 2, name: 'lalo laiza ', age: 28, afection: Afection(id: 1, name: 'desgarro') , medicine: Medicine(name: 'cuidado', typeMedicine: 'ol'),),
    Patient(id: 2, name: 'estebanverdugo', age: 19, afection: Afection(id: 1, name: 'dolor de cabeza') , medicine: Medicine(name: 'ibupofeno', typeMedicine: 'l'),),
    Patient(id: 2, name: 'gustavo gonza', age: 11, afection: Afection(id: 1, name: 'convulsiones') , medicine: Medicine(name: 'medicacion', typeMedicine: 'ral'),),
    Patient(id: 2, name: 'florencia herera', age: 86, afection: Afection(id: 1, name: 'pulmonia') , medicine: Medicine(name: 'respirador', typeMedicine: 'o'),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add, size: 35,),
          onPressed: (){}),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal.shade800,
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text("Pacientes"),
      ),
      body: ListView.builder(
        itemCount: patientsList.length,
        itemBuilder: (context, index){
          return ListTile(
            onLongPress: (){
              _deletePatient(context, patientsList[index]);
            },
            title: Text(patientsList[index].name+' ' + 'edad:' + ' ' + patientsList[index].age.toString(),),
            subtitle: Text(patientsList[index].afection.name +'/'+ patientsList[index].medicine.name),
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text(patientsList[index].name.substring(0,1)),
            ),
          );
        },
      )
    );
  }

  _deletePatient(context,Patient patient){
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.teal,
                    height: 50,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Eliminar paciente",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: double.infinity,
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text('Seguro desea eliminar a '+ patient.name + '?',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15,)
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 90,
                            child: ElevatedButton(
                                onPressed: (){
                              Navigator.maybePop(context);
                            },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                            child: const Text('Cancelar')),
                          ),
                          SizedBox(
                            height: 30,
                            width: 90,
                            child: ElevatedButton(onPressed: (){
                              setState(() {
                                patientsList.remove(patient);
                              });
                              Navigator.maybePop(context);
                            },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                child: const Text('Borrar')),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ),
        ));
  }

}

