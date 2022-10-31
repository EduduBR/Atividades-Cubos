import 'package:exercicios_flutter/Flutter%202/Tab%20Fixa/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Mytabfixa());

String logo =
    'https://camo.githubusercontent.com/4b783104cc582931f87054bdaa2d0f9353d5a210ef7f772420928c1501f54f22/68747470733a2f2f692e696d6775722e636f6d2f654641723551582e706e67';

class Mytabfixa extends StatefulWidget {
  const Mytabfixa({super.key});

  @override
  State<Mytabfixa> createState() => _MytabfixaState();
}

class _MytabfixaState extends State<Mytabfixa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Row(children: [
            Image.network(
              '$logo',
              width: 40,
            ),
            const Text('Meu Pet: A loja do seu pet',
                style: TextStyle(fontSize: 24, color: Colors.white))
          ]),
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          elevation: 30.00,
          backgroundColor: Colors.deepPurple[200],
          bottom: const TabBar(tabs: [
            Text(Strings.dog),
            Text(Strings.cat),
            Text(Strings.bird)
          ]),
        ),
        body: TabBarView(
                children: [
                 Container(
              color: Colors.deepPurple[50],
              child:  const Center(
                child:  Text(
                  Strings.dog,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
           Container(
              color: Colors.deepPurple[100],
              child:  const Center(
                child:  Text(
                  Strings.cat,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
             Container(
              color: Colors.deepPurple[50],
              child:  const Center(
                child:  Text(
                 Strings.bird,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ), 
           ],
      ),
    )));
  }
}
