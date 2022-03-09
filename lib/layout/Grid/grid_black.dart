import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridBlack extends StatelessWidget {
  final String background;
  final bool pressed;
  final VoidCallback updatePressed; // fonction qui ne retourne rien
  final String white = 'img/white.png';
  GridBlack(
      {required this.background,
      required this.pressed,
      required this.updatePressed});
// On r´ecup`ere une r´ef´erence de la fonction updatePressed
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(pressed ? background : white),
              child: InkWell(
                onTap: updatePressed,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
