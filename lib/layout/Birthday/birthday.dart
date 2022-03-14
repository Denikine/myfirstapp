import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/layout/Birthday/birthday_lang.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class MyBirthday extends StatefulWidget {
  const MyBirthday({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _MyBirthdayState createState() {
    return _MyBirthdayState();
  }
}

class _MyBirthdayState extends State<MyBirthday> {
// DATA MODIFIABLE
  List cards = [
    {
      't': 'Pizza aux champignons',
      'm':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec bibendum ante velit, ac fermentum nunc bibendum non.',
      'p': 'img/Image 2.png',
      'press': false
    },
    {
      't': 'Pizza aux olives',
      'm':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec bibendum ante velit, ac fermentum nunc bibendum non.',
      'p': 'img/Image 2.png',
      'press': false
    },
    {
      't': 'Pizza aux anchois',
      'm':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec bibendum ante velit, ac fermentum nunc bibendum non.',
      'p': 'img/Image 2.png',
      'press': false
    },
    {
      't': 'Pizza aux truffes',
      'm':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec bibendum ante velit, ac fermentum nunc bibendum non.',
      'p': 'img/Image 2.png',
      'press': false
    }
  ];
  void press(card) {
    int index = cards.indexOf(card);
    setState(() {
      cards[index]['press'] = !cards[index]['press'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.transparent,
          title: const Text(
            'Delivery Minute',
            style: TextStyle(
              fontFamily: 'Garamond',
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(0, 255, 196, 0),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () => {print('click')},
                icon: const Icon(Icons.menu),
                color: Colors.black,
              ),
            ),
          ]),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 100, 20, 30),
// ListView.separated : Construction des widgets visibles + s´eparateur
        child: ListView.separated(
          itemBuilder: (context, i) {
            return BirthdayLanguage(
              title: cards[i]['t'],
              message: cards[i]['m'],
              //background: cards[i]['back'],
              pic: cards[i]['p'],
              pressed: cards[i]['press'],
              updatePressed: () {
                press(cards[i]);
              },
            );
          },
          itemCount: cards.length,
          separatorBuilder: (context, i) {
// R´esultat comparable au widget SizedBox
            return const Divider(
              height: 50,
              thickness: 1,
            );
          },
        ),
      ),
    );
  }
}
