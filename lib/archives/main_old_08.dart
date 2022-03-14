import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      textDirection: TextDirection.ltr,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5.0),
            boxShadow: const [
              BoxShadow(color: Colors.lightBlueAccent, blurRadius: 15.0)
            ],
            shape: BoxShape.circle,
          ),
          //color: Colors.lightBlueAccent,
          height: 120.0,
          //width: 200.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: const Text(
            "Choix numéro 1",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5.0),
            boxShadow: const [
              BoxShadow(color: Colors.lightGreenAccent, blurRadius: 15.0)
            ],
            shape: BoxShape.circle,
          ),
          height: 120.0,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: const Text(
            "Choix numéro 2",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5.0),
            boxShadow: const [
              BoxShadow(color: Colors.deepPurpleAccent, blurRadius: 15.0)
            ],
            shape: BoxShape.circle,
          ),
          height: 120.0,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: const Text(
            "Choix numéro 3",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5.0),
            boxShadow: const [
              BoxShadow(color: Colors.redAccent, blurRadius: 15.0)
            ],
            shape: BoxShape.circle,
          ),
          //width: 200.0,
          height: 120.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: const Text(
            "Choix numéro 3",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
