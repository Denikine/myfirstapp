import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Exemple de Scaffold avec juste un body

class PiggyBankP1 extends StatelessWidget {
  const PiggyBankP1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Button
      body: Container(
        color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Hi, Santa Claus',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Change User',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 186, 59),
                decoration: TextDecoration.none,
                fontSize: 14.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.transparent,
              child: SvgPicture.asset(
                'img/savings.svg',
                //color: Colors.red,
                semanticsLabel: "PiggyBank logo",
              ),
            ),
            const Text(
              'MY PIGGY BANK',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 35.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => {},
              child: const Text("LOGIN"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 255, 208, 0)),
              ),
              //backgroundColor: MaterialStateProperty.all<Color>(Colors.fromARGB(255, 255, 186, 59)),
              //https://api.flutter.dev/flutter/material/Colors-class.html
            ),
            TextButton(
              onPressed: () => {},
              child: const Text(
                "Don't have an account yet ?",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  //textStyle: MaterialStateProperty.all(Colors.amber),
                  ),
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
