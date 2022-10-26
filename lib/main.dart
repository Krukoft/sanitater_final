import 'package:flutter/material.dart';
import 'package:sanitater/src/ui/screens/home_page.dart';


// import 'package:mvc_pattern/mvc_pattern.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sanitater",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}