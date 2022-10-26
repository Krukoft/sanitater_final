import 'package:flutter/material.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text("Trabajos"),
      ),
      body: Center(
          child: Text("Trabajos")
      ),
    );
  }
}
