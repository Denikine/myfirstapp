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
        // Container(
        //   color: Colors.pinkAccent,
        //   height: 100.0,
        //   //width: 800,
        //   margin: const EdgeInsets.all(10),
        //   padding: const EdgeInsets.fromLTRB(3, 5, 2, 5),
        // ),
        Expanded(
          child: Container(
            color: Colors.blueGrey,
            height: 200.0,
            //width: 800.0,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(3, 5, 2, 5),
            child: Container(
                
              ),
            ),
            // child: const Text(
            //   "Hello World",
            //   textDirection: TextDirection.ltr,
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 40,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
        ),
        // Container(
        //   color: Colors.yellow,
        //   height: 200.0,
        //   //width: 100.0,
        //   margin: const EdgeInsets.all(10),
        //   padding: const EdgeInsets.fromLTRB(3, 5, 2, 5),
        // ),
        // Container(
        //   color: Colors.purple,
        //   height: 200.0,
        //   //width: 200.0,
        //   margin: const EdgeInsets.all(10),
        //   padding: const EdgeInsets.fromLTRB(3, 5, 2, 5),
        // ),
      ],
    );
  }
}
