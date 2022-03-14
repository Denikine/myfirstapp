import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BirthdayHomeLanguage extends StatelessWidget {
  final String title;
  final String message;
  //final String background;
  final bool pressed;
  final VoidCallback updatePressed; // fonction qui ne retourne rien
  final String white = 'img/white.png';
  final String pic;
  BirthdayHomeLanguage(
      {required this.title,
      required this.message,
      required this.pic,
      //required this.background,
      required this.pressed,
      required this.updatePressed});
// On r´ecup`ere une r´ef´erence de la fonction updatePressed
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage('img/image 2.png'),
                        fit: BoxFit.fill,
                      ),
                      //border: Border.all(color: Color(0xFFFFD700), width: 5.0),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 1.0,
                      //       spreadRadius: 2.0,
                      //       blurStyle: BlurStyle.normal)
                      // ],
                      shape: BoxShape.circle,
                    ),
                  ),
                ]),
            // Ink.image(
            //   fit: BoxFit.cover,
            //   image: AssetImage(pressed ? background : white),
            //   child: InkWell(
            //     onTap: updatePressed,
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  message,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
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
