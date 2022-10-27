import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../screen_controllers/formulary_patients_page_controller.dart';
class FormularyPatientsPage extends StatefulWidget {
  const FormularyPatientsPage({Key? key}) : super(key: key);

  @override
  StateMVC<FormularyPatientsPage> createState() => _FormularyPatientsPageState();
}

class _FormularyPatientsPageState extends StateMVC<FormularyPatientsPage> {

  late FormularyPatientsPageController _con;
  _FormularyPatientsPageState():super(FormularyPatientsPageController()){
    _con = FormularyPatientsPageController();
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
        title: const Text("Agregar paciente"),
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
                  child: Image.asset('assets/patient.png',
                    fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: _formInputName(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: _formInputAge(),
                ),
              ],
            ),
            _formInputAfection(),
            _formInputMedicine(),
            _formInputExtrainfo(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(onPressed: (){
                  /*setState(() {
                    _con.patients.remove(patient);
                  });
                  _con.deletePatient(context);*/
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

  _formInputName(){
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
          icon: Icon(Icons.personal_injury_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Nombre',
          hintText: 'Ingrese nombre',
        ),
      ),
    );
  }

  _formInputAge(){
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
          icon: Icon(Icons.apps_outage_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Edad',
          hintText: 'Ingrese edad',
        ),
      ),
    );
  }

  _formInputAfection(){
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
          icon: Icon(Icons.healing_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Padecimineto',
          hintText: 'Ingrese padecimineto',
        ),
      ),
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
          icon: Icon(Icons.local_hospital_rounded, size: 35, color: Colors.teal.shade800,),
          hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),
          labelText: 'Tratamiento',
          hintText: 'Ingrese Tratamiento',
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
          labelText: 'Observaciones',
          hintText: 'Obserbaciones del paciente',
        ),
      ),
    );
  }
}




