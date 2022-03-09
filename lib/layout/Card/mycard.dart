import 'package:flutter/material.dart';
import 'package:myfirstapp/layout/Card/card_language.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
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
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
    {'m': 'Hello', 'back': 'img/anglais.png', 'press': false},
    {'m': "salut", 'back': 'img/france.png', 'press': false},
    {'m': "hola", 'back': 'img/espagne.png', 'press': false},
    {'m': "hallo", 'back': 'img/allemagne.png', 'press': false},
    {'m': "zdravo", 'back': 'img/slovenie.png', 'press': false},
    {'m': "kamusta", 'back': 'img/philippines.png', 'press': false},
    {'m': "xin chao", 'back': 'img/vietnam.png', 'press': false},
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
    setState(() {
      cards[index]['press'] = !cards[index]['press'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 20, 30),
// ListView.separated : Construction des widgets visibles + s´eparateur
        child: ListView.separated(
          itemBuilder: (context, i) {
            return CardLanguage(
              message: cards[i]['m'],
              background: cards[i]['back'],
              pressed: cards[i]['press'],
              updatePressed: () {
                press(cards[i]);
              },
            );
          },
          itemCount: cards.length,
          separatorBuilder: (context, i) {
// R´esultat comparable au widget SizedBox
            return const Divider(
              height: 50,
              thickness: 5,
            );
          },
        ),
      ),
    );
  }
}
