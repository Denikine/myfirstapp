import 'package:flutter/material.dart';

// Exemple de Scaffold avec juste un body

class ShowScaffold_v1 extends StatelessWidget {
  const ShowScaffold_v1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text('Hello World !'),
        alignment: Alignment.center,
      ),
    );
  }
}
