import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  late String imageDirectory;
  late String title;
  late String subtitle;
  BuildPage({Key? key,
    required this.title,
    required this.imageDirectory,
    required this.subtitle,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.asset(imageDirectory,
            fit: BoxFit.scaleDown,),
          ),
          SizedBox(
            height: 64,
            child: Text(title,style: TextStyle(color: Colors.teal.shade800, fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(subtitle,style: const TextStyle(color: Colors.teal, fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            
          )
        ],
      ),
    );
  }
}
