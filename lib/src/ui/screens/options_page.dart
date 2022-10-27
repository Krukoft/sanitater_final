import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sanitater/src/ui/screen_controllers/options_page_controller.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  StateMVC<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends StateMVC<OptionsPage> {



  late OptionsPageController _con;
  _OptionsPageState():super( OptionsPageController()){
    _con = OptionsPageController();
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
        title: const Text("Opciones"),
      ),
      body: const Center(
          child: Text("Opciones")
      ),
    );
  }
}
