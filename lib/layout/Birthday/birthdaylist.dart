import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class BirthdayList extends StatefulWidget {
  const BirthdayList({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _BirthdayListState createState() {
    return _BirthdayListState();
  }
}

class _BirthdayListState extends State<BirthdayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          //children: [Card(), Card(), Card()],
          children: [
            Row(
              children: [
                Stack(
                  children: [],
                )
              ],
            ),
            Row(
              children: [Stack()],
            ),
            Row(
              children: [Stack()],
            )
          ],
        ),
      ),
    );
  }
}
