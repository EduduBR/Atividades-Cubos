import 'package:exercicios_flutter/Flutter%201/Exercicio%201/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(const MyDrawer());

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(iconTheme: IconThemeData(color: Color.fromARGB(255, 247, 180, 202)),
              title: const Text('Meu Drawer'),
              backgroundColor: Colors.pink,
            ),
            drawer: Drawer(
                backgroundColor:Colors.pink[100],
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      color: Colors.pink,
                      width: 20,
                      height: 49,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.flash_on,
                        color: Colors.blue,
                        size: 35,
                      ),
                      title: const Text("Flutter",
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      subtitle: const Text('Tudo são Widgets'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.emoji_emotions_outlined,
                          color: Colors.red, size: 35),
                      title: const Text("Dart",
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      subtitle: const Text('É muito forte'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.coffee,
                        color: Colors.brown,
                        size: 35,
                      ),
                      title: const Text("Coffee",
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      subtitle: const Text('Queroo Caféééé'),
                      onTap: () {},
                    ),
                  ],
                )
              )
            )
          );
  }
}
