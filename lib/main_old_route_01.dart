import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation avec Flutter',
      home: MaPremiereRoute(),
      routes: {'/deux': (context) => MaSecondeRoute()},
    ),
  );
}

class MaPremiereRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Aller `a la route 2'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/deux',
            );
          },
        ),
      ),
    );
  }
}

class MaSecondeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Retour'),
        ),
      ),
    );
  }
}
