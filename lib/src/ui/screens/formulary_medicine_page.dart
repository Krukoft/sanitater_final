import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screen_controllers/formulary_medicine_page_controller.dart';
class FormularyMedicinePage extends StatefulWidget {
  const FormularyMedicinePage({Key? key}) : super(key: key);

  @override
  StateMVC<FormularyMedicinePage> createState() => _FormularyMedicinePageState();
}

class _FormularyMedicinePageState extends StateMVC<FormularyMedicinePage> {
  late FormularyMedicinePageController _con;
  _FormularyMedicinePageState():super(FormularyMedicinePageController()){
    _con = FormularyMedicinePageController();
  }

  @override
  init(){
    _con.initpage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: const Text("Agregar Medicamentos"),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.teal.shade100,
                    child: ClipRRect(
                      child: Image.asset('assets/medicine.png',
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: _formInputMedicine(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: _formInputStock(),
                    ),
                  ],
                ),
                _formInputType(),
                _formInputExtrainfo(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(onPressed: (){
                      _con.addMedicine(context);
                    },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade800,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        child: const Text('Ingresar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                  ),
                ),
              ],
            )
        )
    );
  }

  _formInputMedicine(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal.shade800),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.health_and_safety_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Medicamento',
          hintText: 'Ingrese nombre',
        ),
      ),
    );
  }

  _formInputStock(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal.shade800),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.medical_information_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Cantidad',
          hintText: 'Ingrese cantidad',
        ),
      ),
    );
  }


  _formInputType(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal.shade800),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.local_hospital_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Tipo',
          hintText: 'Ingrese tipo de medicamento',
        ),
      ),
    );
  }

  _formInputExtrainfo(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal.shade800),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.remove_red_eye_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Descripción',
          hintText: 'Ingrese descripción',
        ),
      ),
    );
  }
}