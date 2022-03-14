import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliverLanguage extends StatelessWidget {
  final String title;
  final String message;
  final String background;
  final bool pressed;
  final VoidCallback updatePressed; // fonction qui ne retourne rien
  final String white = 'img/white.png';
  DeliverLanguage(
      {required this.title,
      required this.message,
      required this.background,
      required this.pressed,
      required this.updatePressed});
// On r´ecup`ere une r´ef´erence de la fonction updatePressed
  @override
  Widget build(BuildContext context) {
    var background;
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
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
