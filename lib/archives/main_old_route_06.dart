import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation avec Flutter',
    initialRoute: '/',
    routes: {
      '/': (context) => MaPremiereRoute(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/deux') {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return MaSecondeRoute(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }
    },
    onUnknownRoute: (settings) {
      return MaterialPageRoute(builder: (context) => NotFound());
    },
  ));
}

class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erreur de navigation'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('404'),
      ),
    );
  }
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
              '/deuux', // erreur de saisie sur la route
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
  final String title;
  final String content;
  MaSecondeRoute({required this.title, required this.content});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
