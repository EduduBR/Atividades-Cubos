import 'package:exercicios_flutter/componentes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//contadores de joias
var fragment = 0;
var piece = 0;
var stone = 0;

// invocando myapp
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //funcion count
  final imagem1 =
      'https://camo.githubusercontent.com/0abe58ebc2fe9cc1089ab3915e6156b2c30622b405529dc42965d603f468abf4/68747470733a2f2f692e696d6775722e636f6d2f6a54714e6137442e706e67';
  var imagem2 = '';
  var imagem3 = '';

  void updateCoins() {
    setState(() {
      fragment++;
      if (fragment == 10) {
        piece++;
        imagem2 =
            'https://camo.githubusercontent.com/394b5b22aaad6b38d4d0ba61dd39c660d7f6f177cec3d435875f7deaa65b43e9/68747470733a2f2f692e696d6775722e636f6d2f495235536e36582e706e67';
        fragment = fragment - 10;
        if (piece == 10) {
          stone++;
          imagem3 =
              'https://camo.githubusercontent.com/afc2d6fab0b5262d761f4f7ea53440db2d4363ff86d955e03837d0325963ecc8/68747470733a2f2f692e696d6775722e636f6d2f4a4165475262312e706e67';
          piece = piece - 10;
        }
      }
    });
  }

//MyHomePage
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title:
              const Text('Joias do Infinito', style: TextStyle(fontSize: 24)),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 30.00,
          backgroundColor: Colors.blue),
      body: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PackComponent(Colors.blue, '$fragment'),
                PackComponent(Colors.lightBlueAccent, '$piece'),
                PackComponent(Colors.blue, '$stone')
              ]),
          Row(
            children: [
              Container(
                margin:const EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: Image.network(
                  '$imagem1',
                  errorBuilder: (context, exception, stackTrack) =>const Icon(
                    Icons.stream_outlined,
                  ),
                ),
              ),
              Container(
                margin:const EdgeInsets.only(left: 35),
                width: 100,
                height: 100,
                child: Image.network(
                  '$imagem2',
                  errorBuilder: (context, exception, stackTrack) =>const Icon(
                    Icons.stream_outlined,
                  ),
                ),
              ),
              Container(
                margin:const EdgeInsets.only(left: 40),
                width: 100,
                height: 100,
                child: Image.network(
                  '$imagem3',
                  errorBuilder: (context, exception, stackTrack) =>const Icon(
                    Icons.stream_outlined,
                  ),
                ),
              )
            ],
          ),
          FloatingActionButton.extended(
            
            backgroundColor:const Color.fromARGB(255, 14, 48, 240),
            foregroundColor: Colors.white,
            onPressed: () {
              updateCoins(); // Respond to button press
            },
            icon:const Icon(Icons.add),
            label:const Text('Fragment', style: TextStyle(fontSize: 30)),
          )
        ],
      ),
    ));
  }
}

//componetização de containers
class PackComponent extends StatelessWidget {
  final Color cor;
  var texto = '';
  PackComponent(this.cor, this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(texto, style: TextStyle(fontSize: 40)),
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            const BoxShadow(
                offset: Offset(10, 10),
                blurRadius: 5,
                color: const Color.fromARGB(255, 64, 109, 187))
          ]),
    );
  }
}
