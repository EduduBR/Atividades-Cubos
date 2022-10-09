import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:myhomepage(),
   );
  }
}

class myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicos 1 Flutter'),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 4, 47, 240),
          Color.fromARGB(255, 76, 121, 247)
        ])),
        child: Center(
          child: Text(
            'Flutter',
            style: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
                fontStyle: FontStyle.italic),
          ),
        ),
      )),
    );
  }
}
