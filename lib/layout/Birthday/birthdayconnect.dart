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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            //alignment: Alignment.center,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                height: 90,
                width: 90,
                color: const Color.fromARGB(0, 255, 255, 255),
                child: SvgPicture.asset(
                  'img/birthday/cupcake.svg',
                  color: const Color.fromARGB(255, 236, 105, 28),
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
        const SizedBox(height: 50),
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'SignIn',
                    style: GoogleFonts.baskervville(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.none,
                        background: Paint()
                          ..color = Color.fromARGB(255, 236, 105, 28)
                          ..strokeWidth = 32
                          ..style = PaintingStyle.stroke,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Username',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.baskervville(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: (TextFormField(
                    style: GoogleFonts.baskervville(
                        color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: const InputDecoration(
                      filled: true,
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                          //borderSide: BorderSide.none,
                          //borderRadius: BorderRadius.circular(50)
                          ),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'Enter your username',
                      fillColor: Color.fromARGB(10, 255, 255, 255),
                      focusColor: Color.fromARGB(10, 209, 163, 137),
                      hoverColor: Color.fromARGB(10, 209, 163, 137),
                    ),
                  )),
                )
              ]),
              const SizedBox(height: 30),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.baskervville(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: (TextFormField(
                    style: GoogleFonts.baskervville(
                        color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: const InputDecoration(
                      filled: true,
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                          //borderSide: BorderSide.none,
                          //borderRadius: BorderRadius.circular(50)
                          ),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      hintText: '* * * * * * *',
                      fillColor: Color.fromARGB(10, 255, 255, 255),
                      focusColor: Color.fromARGB(10, 209, 163, 137),
                      hoverColor: Color.fromARGB(10, 209, 163, 137),
                    ),
                  )),
                )
              ]),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.baskervville(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Don t have an account yet ? Really ? ',
            textAlign: TextAlign.center,
            style: GoogleFonts.baskervville(
              textStyle: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Text(
            'CREATE ONE',
            textAlign: TextAlign.center,
            style: GoogleFonts.baskervville(
              textStyle: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 236, 105, 28),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ]),
      ],
    )));
  }
}
