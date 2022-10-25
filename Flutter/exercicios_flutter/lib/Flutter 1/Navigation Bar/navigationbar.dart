import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyNavigatorBar());

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 186, 214, 255),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Configurações'),
        BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login')
      ],
    )));
  }
}
