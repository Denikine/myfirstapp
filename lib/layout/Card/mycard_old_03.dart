import 'package:flutter/material.dart';
import 'package:myfirstapp/layout/Card/card_language.dart';

// Premier widget Stateful : Affichage dynamique
class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);
// DATA FINAL
  @override
  _MyCardState createState() {
    return _MyCardState();
  }
}

class _MyCardState extends State<MyCard> {
// DATA MODIFIABLE
  List cards = [
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
  ];
  void press(card) {
    int index = cards.indexOf(card);
// setState permet de rebuild le widget avec un changement
    setState(() {
      cards[index]['press'] = !cards[index]['press'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
// Op´erateur spread pour passer d'un array `a une liste
            ...cards.map((c) {
              return CardLanguage(
                message: c['m'],
                background: c['back'],
                pressed: c['press'],
                updatePressed: () {
                  press(c);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
