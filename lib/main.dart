import 'package:flutter/material.dart';
import 'package:sanitater/src/ui/screens/home_page.dart';
import 'package:sanitater/src/ui/screens/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/ui/screens/formulary_patients.dart';


// import 'package:mvc_pattern/mvc_pattern.dart';

Future main() async {
  WidgetsFlutterBinding();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome')?? false;

  runApp(MyApp(showHome: showHome));}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({
    Key?key,
    required this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Sanitater",
      debugShowCheckedModeBanner: false,
      home: FormularyPatiens()/*showHome? const HomePage(): const OnboardingPage(),*/
    );
  }
}