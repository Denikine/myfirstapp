import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/layout/Birthday/birthdayhome_lang.dart';

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
            fit: BoxFit.fitHeight,
            alignment: FractionalOffset.topCenter,
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 243, 117, 33).withOpacity(0.2),
      ),
    ]);
  }
}
