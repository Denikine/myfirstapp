import 'package:flutter/material.dart';
import 'package:myfirstapp/layout/all_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Première application',
      //theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      //home: ShowContainer(),
      //home: ShowPadding(),
      //home: ShowExpanded(),
      //home: ShowStack(),
      //home: ShowScaffold_v1(), // body
      //home: ShowScaffold_v2(), // ButtonNavigationBar
      //home: ShowScaffold_v3(), // Drawer
      //home: ShowScaffold_v4(), // AppBar
      //home: ShowScaffold_v5(), // FloatingActionButton
      //home: Button_v1(), // Button
      //home: Home(), // Exemple
      //home: PiggyBankP1(), // Exercice Piggy Bank - Ecran 1
      home: PiggyBankP2(), // Exercice Piggy Bank - Ecran 2

      //home: ShowCard_v1(), // Card
      //home: ShowCard_v2(), // Card - régorganisation du code
      //home: ShowCard_v3(), // InkWell

      //home: MyCard(), // Statefull widget
      //home: MyCard2(), // Affichage dynamique depuis une liste
      //home: MyCard3(), // Callback
      //home: MyCard4(), // ListView
      //home: MyCard5(), // ListView + constructeur nommé builder
      //home: MyCard6(), // ListView + constructeur nommé separated
    );
  }
}
