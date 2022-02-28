import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        Container(
          color: Colors.blueGrey,
          height: 120.0,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(400, 20, 400, 20),
          child: const Text("Hello world", textDirection: TextDirection.ltr),
        ),
        Container(
          color: Colors.blueGrey,
          height: 120.0,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(400, 20, 400, 20),
          child: const Text("Hello world", textDirection: TextDirection.ltr),
        ),
        Container(
          color: Colors.blueGrey,
          height: 120.0,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(400, 20, 400, 20),
          child: const Text("Hello world", textDirection: TextDirection.ltr),
        ),
        Container(
          color: Colors.blueGrey,
          height: 120,
          //width: 800.0,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.fromLTRB(400, 20, 400, 20),
          child: const Text("Hello world", textDirection: TextDirection.ltr),
        ),
      ],
    );
  }
}
