import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class BirthdayConnect extends StatefulWidget {
  const BirthdayConnect({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _BirthdayConnectState createState() {
    return _BirthdayConnectState();
  }
}

class _BirthdayConnectState extends State<BirthdayConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            //alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                height: 90,
                width: 90,
                color: Color.fromARGB(0, 255, 255, 255),
                child: SvgPicture.asset(
                  'img/birthday/cupcake.svg',
                  color: Color.fromARGB(255, 236, 105, 28),
                  semanticsLabel: "Birthdays logo",
                ),
              ),
              Text(
                'BirthDays',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                    fontSize: 60,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ])),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [Text('Sign In')],
              ),
              const SizedBox(height: 30),
              Row(
                children: [Text('Username'), TextFormField()],
              ),
              const SizedBox(height: 30),
              Row(
                children: [Text('Password'), TextFormField()],
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: null, child: const Text('LOGIN')),
            ],
          ),
        ),
      ],
    )));
  }
}
