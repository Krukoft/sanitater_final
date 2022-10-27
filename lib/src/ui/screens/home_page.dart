import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screen_controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  StateMVC<HomePage> createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> {
  late HomePageController _con;
  _HomePageState():super(HomePageController()){
    _con = HomePageController();
  }

  @override
  void initState() {
    _con.initpage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text("Agenda", textAlign: TextAlign.center,),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () async{
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', false);
              _con.onBoardingSkip(context);
            },
          )
        ],
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
                          child: Image.asset('assets/logo2.png',
                            height: 200,
                            width: 200,),
                        ),
                      ),
                      const Text("Sanitater", style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    ],
                  )
              ),

              Material(
                color: Colors.teal,
                child: ListTile (
                  leading: Icon(Icons.access_time_filled, color: Colors.teal.shade900,size: 30,),
                  title: const Text("Dias Laborales", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    _con.goLaboralDayPage(context);
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
                  title: const Text("Pacientes", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    _con.goPatientsPage(context);
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
                  title: const Text("Trabajos", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    _con.goWorkPage(context);
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
                  title: const Text("Medicinas", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    _con.goMedicinesPage(context);
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
                  title: const Text("Opciones", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal.shade900,size: 25,),
                  onTap: (){
                    _con.goOptionsPage(context);
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
