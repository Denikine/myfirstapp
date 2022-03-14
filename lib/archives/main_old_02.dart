import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HelloWorld',
        home: Scaffold(
        appBar: AppBar(
        title: const Text('Hello World App'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello World !'),
          ],
         ),
        ),
      ),
    );
  }
}
