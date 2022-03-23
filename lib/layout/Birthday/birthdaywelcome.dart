import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirstapp/archives/main_old_route_03.dart';

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
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            child: Column(
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
                      fontSize: 70,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                'You will ',
                                style: GoogleFonts.baskervville(
                                  textStyle: const TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'remember ',
                            style: GoogleFonts.baskervville(
                              textStyle: const TextStyle(
                                backgroundColor:
                                    Color.fromARGB(255, 236, 105, 28),
                                fontSize: 24,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            'of your',
                            style: GoogleFonts.baskervville(
                              textStyle: const TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' always',
                            style: GoogleFonts.baskervville(
                              textStyle: const TextStyle(
                                backgroundColor:
                                    Color.fromARGB(255, 236, 105, 28),
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            ' the birthdays',
                            style: GoogleFonts.baskervville(
                              textStyle: const TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            ' loved ones',
                            style: GoogleFonts.baskervville(
                              textStyle: const TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // Text(
                //   'You will always remember the birthdays of your loved ones',
                //   textAlign: TextAlign.center,
                //   style: GoogleFonts.baskervville(
                //     textStyle: const TextStyle(
                //       fontSize: 30,
                //       color: Color.fromARGB(255, 0, 0, 0),
                //       fontWeight: FontWeight.bold,
                //       decoration: TextDecoration.none,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'You already have an account ? ',
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
                    'LOG IN',
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
                const SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: (TextFormField(
                    style: GoogleFonts.baskervville(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 247, 155, 102)),
                      labelText: 'Username',
                      fillColor: Color.fromARGB(255, 236, 105, 28),
                      //focusColor: Color.fromARGB(255, 236, 105, 28),
                    ),
                  )),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 300,
                  child: (TextFormField(
                    style: GoogleFonts.baskervville(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 247, 155, 102)),
                      labelText: 'Password',
                      fillColor: Color.fromARGB(255, 236, 105, 28),
                      //focusColor: Color.fromARGB(255, 236, 105, 28),
                    ),
                  )),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 300,
                  child: (TextFormField(
                    style: GoogleFonts.baskervville(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 247, 155, 102)),
                      labelText: 'Confirm password',
                      fillColor: Color.fromARGB(255, 236, 105, 28),
                      //focusColor: Color.fromARGB(255, 236, 105, 28),
                    ),
                  )),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('JOIN US'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Color.fromARGB(255, 0, 0, 0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
