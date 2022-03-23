import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirstapp/archives/main_old_route_03.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class BirthdayAdd extends StatefulWidget {
  const BirthdayAdd({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _BirthdayAddState createState() {
    return _BirthdayAddState();
  }
}

class _BirthdayAddState extends State<BirthdayAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
