import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation avec Flutter',
    initialRoute: MaPremiereRoute.routeName,
    routes: {
      MaPremiereRoute.routeName: (context) => MaPremiereRoute(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == MaSecondeRoute.routeName) {
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
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page d\'accueil'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Sondage'),
          onPressed: () {
            _navigateAndDisplaySelection(context);
          },
        ),
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final choix = await Navigator.pushNamed(
      context,
      '/deux',
      arguments: Data(
        title: 'Page du Sondage',
        content: 'Prenez-vous un petit d ́ejeuner le matin ?',
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$choix"),
      duration: Duration(seconds: 5),
    ));
  }
}

class MaSecondeRoute extends StatelessWidget {
  final String title;
  final String content;
  static String routeName = "/deux";
  MaSecondeRoute({required this.title, required this.content});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    Navigator.pop(context, 'Oui !');
                  },
                  child: const Text(
                    'Oui',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      'Non',
                    );
                  },
                  child: const Text(
                    'Non',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
