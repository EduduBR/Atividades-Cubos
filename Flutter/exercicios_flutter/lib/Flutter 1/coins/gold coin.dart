import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var copper_coin = 0;
  var silver_coin = 0;
  var gold_coin = 0;

  void updateCoins() {
    setState(() {
      copper_coin++;
      if (copper_coin == 10) {
        silver_coin++;
        copper_coin = copper_coin - 10;
        if (silver_coin == 10) {
          gold_coin++;
          silver_coin = silver_coin - 10;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Coint Coin', style: TextStyle(fontSize: 24)),
                titleSpacing: 00.0,
                centerTitle: true,
                toolbarHeight: 60.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 30.00,
                backgroundColor: Color.fromARGB(255, 23, 187, 8)),
            body: Center(
                child: GestureDetector(
                    onTap: updateCoins,
                    child: Text(
                      'Tap for \nmore Coins\n Copper:$copper_coin\n Silver:$silver_coin \n Gold:$gold_coin',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color.fromARGB(255, 125, 226, 31)),
                    )))));
  }
}
