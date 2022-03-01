import 'package:flutter/material.dart';

// Exemple de Scaffold avec juste un body

class ShowScaffold_v3 extends StatelessWidget {
  const ShowScaffold_v3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: const Text('Hello World !'),
          alignment: Alignment.center,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "User"),
          ],
        ),
        drawer: Drawer(
            child: Column(children: [
          Row(
            children: const [
              Icon(Icons.account_circle),
              Text('User'),
            ],
          )
        ])));
  }
}
