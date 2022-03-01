import 'package:flutter/material.dart';

// Exemple de Scaffold avec juste un body

class PiggyBankP2 extends StatelessWidget {
  const PiggyBankP2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('MY PIGGY BANK'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 196, 0),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () => {print('click')},
                icon: const Icon(Icons.settings),
              ),
            ),
          ]),
      body: Container(
        color: Colors.pinkAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/santa.jpg'),
                  fit: BoxFit.fitHeight,
                ),
                //border: Border.all(color: Color(0xFFFFD700), width: 5.0),
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 15.0)],
                shape: BoxShape.circle,
              ),
              width: 200.0,
              height: 200.0,
            ),
            const Text(
              'Hi, Santa Claus',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 35.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Your piggy bank currently contains :',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 18.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '2000 €',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 90.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Padding(
              //   padding: EdgeInsets.only(right: 15),
              Container(
                padding: EdgeInsets.all(10),
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 255, 196, 0),
                  onPressed: () => {},
                  child: const Icon(Icons.remove),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 255, 196, 0),
                  onPressed: () => {},
                  child: const Icon(Icons.add),
                ),
              ),
            ])
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 196, 0),
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Account Balance"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_card), label: "Add a Card"),
        ],
      ),
      drawer: Drawer(
          child: Column(children: [
        Row(
          children: const [
            Icon(Icons.account_circle),
            Text('User'),
          ],
        )
      ])),
    );
  }
}
