import 'package:flutter/material.dart';

// Exemple Button

class Button_v1 extends StatelessWidget {
  const Button_v1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => {print('click')},
              icon: const Icon(Icons.access_alarm),
            ),
          ),
        ],
      ),
      // Button
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {},
              child: const Text("Button"),
            ),
            ElevatedButton(
              onPressed: () => {},
              child: const Text("Elevated Button"),
              style: const ButtonStyle(
                  //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  //https://api.flutter.dev/flutter/material/Colors-class.html
                  ),
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "User",
          ),
        ],
      ),
    );
  }
}
