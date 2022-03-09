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
    {'m': 'Hello', 'fs': 50, 'col': Colors.red},
    {'m': "salut", 'fs': 38, 'col': Colors.green},
    {'m': "hola", 'fs': 60, 'col': Colors.yellow},
    {'m': "hallo", 'fs': 55, 'col': Colors.blue},
    {'m': "zdravo", 'fs': 58, 'col': Colors.purple},
    {'m': "kamusta", 'fs': 38, 'col': Colors.orange},
    {'m': "xin chao", 'fs': 56, 'col': Colors.teal},
  ];
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
                  message: c['m'], fontsize: c['fs'], color: c['col']);
            })
          ],
        ),
      ),
    );
  }
}
