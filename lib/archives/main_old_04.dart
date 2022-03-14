import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('img/image-attractive.jpg'),
            fit: BoxFit.fill,
          ),
          border: Border.all(color: Color(0xFFFFD700), width: 5.0),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 15.0)],
          shape: BoxShape.circle,
        ),
        width: 200.0,
        height: 200.0,
      ),
    );
  }
}
