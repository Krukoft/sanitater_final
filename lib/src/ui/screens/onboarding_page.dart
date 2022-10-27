import 'package:flutter/material.dart';
import 'package:sanitater/src/ui/component/build_page.dart';
import 'package:sanitater/src/ui/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index){
          setState(() => isLastPage = index ==3);
        },
        children: [
          BuildPage(title: 'Sanitater', imageDirectory: 'assets/logo2.png', subtitle: 'Hola bienvenidos!'),
          BuildPage(title: 'Agenda', imageDirectory: 'assets/agenda.png', subtitle: 'Organice sus días laborales como mejor le parezca.'),
          BuildPage(title: 'Pacientes', imageDirectory: 'assets/patient.png', subtitle: 'Tenga control y gestione sus pacientes.'),
          BuildPage(title: 'Medicamentos', imageDirectory: 'assets/medicine.png', subtitle:'controle el stock de sus medicamentos.' )
        ],
      ),
      bottomSheet: isLastPage?
      TextButton(
          style:TextButton.styleFrom(
            backgroundColor: Colors.teal,
            primary: Colors.white,
            minimumSize: const Size.fromHeight(80),
          ),
        child: const Text('Iniciar',style: TextStyle(fontSize: 24),),
      onPressed: () async{
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('ShowHome', true);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
      }):
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 30,
              width: 90,
              child: ElevatedButton(onPressed: (){
                controller.jumpToPage(2);
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  child: const Text('Omitir')),
            ),
            Center(
              child: SmoothPageIndicator(
                onDotClicked: (index) {
                  controller.animateToPage(index,duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                } ,
                controller: controller,
                count: 4,
                effect: WormEffect(
                  spacing: 10,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.teal.shade800,
                ),
              ),

            ),
            SizedBox(
              height: 30,
              width: 90,
              child: ElevatedButton(onPressed: (){
                controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  child: const Text('Siguiente',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}
