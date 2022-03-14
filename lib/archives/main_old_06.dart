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
        //Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          color: Colors.pinkAccent,
          height: 100.0,
          width: 100.0,
        ),
        Expanded(
          child: Container(
            color: Colors.lightBlueAccent,
            height: 100.0,
            width: 200.0,
            child: const Text(
              "Hello World",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
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
          width: 200.0,
        ),
        // ]),
      ],
    );
  }
}
