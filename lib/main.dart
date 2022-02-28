import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [
        //Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          color: Colors.blue,
          height: 100.0,
          width: 100.0,
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            height: 100.0,
            width: 100.0,
            child: const Text(
              "Hello World",
            ),
          ),
        ),
        //]),
        // Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          color: Colors.yellow,
          height: 100.0,
          width: 100.0,
        ),
        Container(
          color: Colors.purple,
          height: 100.0,
          width: 100.0,
        ),
        // ]),
      ],
    );
  }
}
