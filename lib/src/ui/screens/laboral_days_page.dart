import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screen_controllers/laboral_days_page_controller.dart';

class LaboralDaysPage extends StatefulWidget {
  const LaboralDaysPage({Key? key}) : super(key: key);

  @override
  StateMVC<LaboralDaysPage> createState() => _LaboralDaysPageState();
}

class _LaboralDaysPageState extends StateMVC<LaboralDaysPage> {

  late LaboralDaysPageController _con;
  _LaboralDaysPageState():super(LaboralDaysPageController()){
    _con = LaboralDaysPageController();
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
        title: const Text("Días Laborales"),
        ),
      body: const Center(
        child: Text("Días Laborales")
      ),
      );
  }
}
