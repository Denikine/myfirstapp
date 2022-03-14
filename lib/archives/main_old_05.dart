import 'package:flutter/material.dart';

void main() {
  runApp(const ShowPadding());
}

class ShowPadding extends StatelessWidget {
  const ShowPadding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.teal[100],
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.fromLTRB(3, 5, 2, 5),
        child: Container(
          color: Colors.greenAccent[100],
          padding: const EdgeInsets.only(top: 10, right: 20),
          margin: const EdgeInsets.all(15),
          width: 150,
          height: 150,
          child: Container(
            color: Colors.limeAccent[100],
            margin: const EdgeInsets.only(left: 5, bottom: 30),
          ),
        ),
      ),
    );
  }
}
