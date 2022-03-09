import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLanguage extends StatelessWidget {
  final String message;
  final double fontsize;
  final Color color;
  CardLanguage(
      {required this.message, required this.fontsize, required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: (() => {print('tap')}),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(
              fontSize: fontsize,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
