import 'package:flutter/material.dart';

// Exemple de Scaffold avec juste un body

class ShowScaffold_v4 extends StatelessWidget {
  const ShowScaffold_v4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home page'), actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => {print('click')},
              icon: const Icon(Icons.access_alarm),
            ),
          ),
        ]),
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
