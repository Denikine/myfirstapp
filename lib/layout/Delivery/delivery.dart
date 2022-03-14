import 'package:flutter/material.dart';
import 'package:myfirstapp/layout/Delivery/delivery_lang.dart';

// Premier widget Stateful : ListView + constructeur nomm´e
class MyDeliver extends StatefulWidget {
  const MyDeliver({Key? key}) : super(key: key);
// DATA FINAL (widget.name pour y acc´eder depuis le State)
  @override
  _MyDeliverState createState() {
    return _MyDeliverState();
  }
}

class _MyDeliverState extends State<MyDeliver> {
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
          title: const Text(
            'Delivery Minute',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(0, 255, 196, 0),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () => {print('click')},
                icon: const Icon(Icons.menu),
                color: Colors.black,
              ),
            ),
          ]),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 20, 30),
// ListView.separated : Construction des widgets visibles + s´eparateur
        child: ListView.separated(
          itemBuilder: (context, i) {
            return DeliverLanguage(
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
