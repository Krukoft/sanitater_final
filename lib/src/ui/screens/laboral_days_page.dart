import 'package:flutter/material.dart';

class LaboralDaysPage extends StatelessWidget {
  const LaboralDaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text("Días Laborales"),
        ),
      body: Center(
        child: Text("Días Laborales")
      ),
      );
  }
}
