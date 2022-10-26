import 'package:flutter/material.dart';
import 'package:sanitater/src/models/medicine_model.dart';

class MedicinesPage extends StatefulWidget {
  const MedicinesPage({Key? key}) : super(key: key);

  @override
  State<MedicinesPage> createState() => _MedicinesPageState();
}

class _MedicinesPageState extends State<MedicinesPage> {
  List<Medicine> medicineList = [
    Medicine(name: 'ibuprofeno', typeMedicine: 'oral'),
    Medicine(name: 'novalgina', typeMedicine: 'oral'),
    Medicine(name: 'aspirineta', typeMedicine: 'oral'),
    Medicine(name: 'calmante', typeMedicine: 'oral'),
    Medicine(name: 'lotrial D', typeMedicine: 'oral'),

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
          itemCount: medicineList.length,
          itemBuilder: (context, index){
            return ListTile(
              onLongPress: (){
                _deletePatient(context, medicineList[index]);
              },
              title: Text(medicineList[index].name),
              subtitle: Text(medicineList[index].typeMedicine),
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(medicineList[index].name.substring(0,1)),
              ),
            );
          },
        )
    );
  }

  _deletePatient(context,Medicine medicine){
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
                        child: Text("Eliminar medicamento",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: double.infinity,
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text('Seguro desea eliminar a '+ medicine.name + '?',
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
                                  medicineList.remove(medicine);
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