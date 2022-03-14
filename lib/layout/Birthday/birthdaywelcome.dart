import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class BirthdayWelcome extends StatefulWidget {
  const BirthdayWelcome({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _BirthdayWelcomeState createState() {
    return _BirthdayWelcomeState();
  }
}

class _BirthdayWelcomeState extends State<BirthdayWelcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Container(
              height: 90,
              width: 90,
              color: Color.fromARGB(0, 255, 255, 255),
              child: SvgPicture.asset(
                'img/birthday/cupcake.svg',
                color: Colors.white,
                semanticsLabel: "Birthdays logo",
              ),
            ),
            Text(
              'BirthDays',
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(
                  fontSize: 70,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
        Row(),
        Row()
      ],
    );
  }
}
