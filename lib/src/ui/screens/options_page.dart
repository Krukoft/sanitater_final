import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text("Opciones"),
      ),
      body: Center(
          child: Text("Opciones")
      ),
    );
  }
}
