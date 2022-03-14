import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation avec Flutter',
      routes: {
        '/': (context) => MaPremiereRoute(),
        '/deux': (context) => MaSecondeRoute()
      },
      initialRoute: '/',
    ),
  );
}

class Data {
  final String title;
  final String content;
  Data({required this.title, required this.content});
}

class MaPremiereRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Aller `a la route 2'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/deux',
              arguments: Data(
                title: 'Envoyer des arguments',
                content: 'Le contenu',
              ),
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
    final Data data = ModalRoute.of(context)!.settings.arguments as Data;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Center(
        child: Text(
          data.content,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
