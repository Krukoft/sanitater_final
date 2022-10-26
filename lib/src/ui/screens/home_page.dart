import 'package:flutter/material.dart';
import 'package:sanitater/src/ui/screens/laboral_days_page.dart';
import 'package:sanitater/src/ui/screens/medicines_page.dart';
import 'package:sanitater/src/ui/screens/options_page.dart';
import 'package:sanitater/src/ui/screens/patients_page.dart';
import 'package:sanitater/src/ui/screens/works_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text("Agenda", textAlign: TextAlign.center,)
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.teal,
          child: ListView(
            children: [
               DrawerHeader(
                 decoration: BoxDecoration(
                   
                   color: Colors.teal.shade800
                 ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          child: Image.asset('assets/logo.png',
                            height: 200,
                            width: 200,),
                        ),
                      ),
                      Text("Sanitater", style: TextStyle(fontSize: 35,color: Colors.white,), textAlign: TextAlign.center,),
                    ],
                  )
              ),

              Material(
                color: Colors.teal,
                child: ListTile (
                  leading: Icon(Icons.access_time_filled, color: Colors.teal.shade900,size: 30,),
                  title: Text("Dias Laborales", style: TextStyle(fontSize: 20, color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LaboralDaysPage()));
                  },
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.accessible, color: Colors.teal.shade900,size: 30,),
                  title: const Text("Pacientes", style: TextStyle(fontSize: 20, color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PatientsPage()));
                  },
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.work, color: Colors.teal.shade900,size: 30,),
                  title: const Text("Trabajos", style: TextStyle(fontSize: 20, color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => WorksPage()));
                  },
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.local_hospital, color: Colors.teal.shade900,size: 30,),
                  title: const Text("Medicinas", style: TextStyle(fontSize: 20, color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MedicinesPage()));
                  },
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.teal.shade900,size: 30,),
                  title: const Text("Opciones", style: TextStyle(fontSize: 20, color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OptionsPage()));
                  },
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
