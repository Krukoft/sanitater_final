import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screen_controllers/works_page_controller.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({Key? key}) : super(key: key);

  @override
  StateMVC<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends StateMVC<WorksPage> {

  late WorksPageController _con;
  _WorksPageState():super(WorksPageController()){
    _con = WorksPageController();
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
        title: const Text("Trabajos"),
      ),
      body: const Center(
          child: Text("Trabajos")
      ),
    );
  }
}
