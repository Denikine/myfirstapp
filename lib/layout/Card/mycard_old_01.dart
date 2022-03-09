import 'package:flutter/material.dart';
// Premier widget Stateful

class MyCard extends StatefulWidget {
// 1) Modification en StatefulWidget
  const MyCard({Key? key}) : super(key: key);
// DATA FINAL
// 3) Surcharge de la m´ethode createState qui retournera une instance
// de MyCardState. Toute modification de ce State entrainera
// un rebuild de notre widget
  @override
  _MyCardState createState() {
    return _MyCardState();
  }
}

// 2) Nouvelle classe du m^eme nom avec le suffixe State
// cette classe h´erite de la classe g´en´erique State
// on pr´ecise le type de data que l'on va stocker dans ce State
// cette classe ne sera jamais instanci´ee directement, on la rend donc priv´ee
class _MyCardState extends State<MyCard> {
// DATA MODIFIABLE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
