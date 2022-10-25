import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyAppBar());

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Coffee',
                style: TextStyle(fontSize: 24, color: Colors.brown)),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.coffee,
                color: Colors.brown,
              ),
            ),
            titleSpacing: 00.0,
            toolbarHeight: 60.2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 30.00,
            backgroundColor: Color.fromARGB(255, 211, 209, 74)),
      ),
    );
  }
}
