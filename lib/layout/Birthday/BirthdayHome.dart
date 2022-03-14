import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class BirthdayHome extends StatefulWidget {
  const BirthdayHome({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _BirthdayHomeState createState() {
    return _BirthdayHomeState();
  }
}

class _BirthdayHomeState extends State<BirthdayHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/birthday/BirthdayParty.jpg'),
            fit: BoxFit.cover,
            alignment: FractionalOffset.topCenter,
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 243, 117, 33).withOpacity(0.7),
      ),
      Container(
        // height: 600,
        // width: 250,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        ]),
      ),
    ]);
  }
}
