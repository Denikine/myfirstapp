import 'package:flutter/material.dart';
import 'package:myfirstapp/layout/Card/card_language_v2.dart';

// Exemple de Card
class ShowCard extends StatelessWidget {
  const ShowCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardLanguage(message: "hello", fontsize: 50, color: Colors.red),
            CardLanguage(message: "salut", fontsize: 38, color: Colors.green),
            CardLanguage(message: "hola", fontsize: 60, color: Colors.yellow),
            CardLanguage(message: "hallo", fontsize: 55, color: Colors.blue),
            CardLanguage(message: "zdravo", fontsize: 58, color: Colors.purple),
            CardLanguage(
                message: "kamusta", fontsize: 38, color: Colors.orange),
            CardLanguage(message: "xin chao", fontsize: 56, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
