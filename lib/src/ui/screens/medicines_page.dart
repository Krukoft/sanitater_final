import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/models/medicine_model.dart';

import '../screen_controllers/medicines_page_controller.dart';

class MedicinesPage extends StatefulWidget {
  const MedicinesPage({Key? key}) : super(key: key);

  @override
  StateMVC<MedicinesPage> createState() => _MedicinesPageState();
}

class _MedicinesPageState extends StateMVC<MedicinesPage> {

  late MedicinesPageController _con;
  _MedicinesPageState():super(MedicinesPageController()){
    _con = MedicinesPageController();
  }

  @override
  init(){
    _con.initpage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            elevation: 5,
            backgroundColor: Colors.teal,
            child: const Icon(Icons.add, size: 35,),
            onPressed: (){
              _con.goFormularyMedicine(context);
            }),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal.shade800,
          child: Container(
            height: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: const Text("Medicinas"),
        ),
        body: ListView.builder(
          itemCount: _con.medicines.length,
          itemBuilder: (context, index){
            return ListTile(
              onLongPress: (){
                _deleteMedicine(context, _con.medicines[index]);
              },
              title: Text(_con.medicines[index].name),
              subtitle: Text(_con.medicines[index].typeMedicine + '/Stock acual '+_con.medicines[index].stockMedicine.toString()),
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(_con.medicines[index].name.substring(0,1)),
              ),
            );
          },
        )
    );
  }

  _deleteMedicine(context,Medicine medicine){
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
                        child: Text("Eliminar medicamento",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold)),
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
                            style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
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
                                    _con.onCancelPopUp(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  child: const Text('Cancelar',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(onPressed: (){
                                setState(() {
                                  _con.medicines.remove(medicine);
                                });
                                _con.deleteMedicine(context);
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  child: const Text('Borrar',style: TextStyle(fontWeight: FontWeight.bold))),
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
