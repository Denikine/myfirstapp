import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Card(
              elevation: 5,
              child: Text(
                "HELLO",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "SALUT",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 38,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "HOLA",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 60,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "HALLO",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 55,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "ZDRAVO",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 58,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "KAMUSTA",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 38,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Text(
                "XIN CHAO",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 56,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
