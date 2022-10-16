import 'package:exercicios_flutter/gold%20coin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ComponentApp());
}

class ComponentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          PackComponent(cor: Colors.green,altura: 200,comprimento: 200,),
          PackComponent( cor:Colors.red, altura: 100, comprimento: 100),
          PackComponent( cor: Colors.yellow, altura: 200, comprimento: 200)
        ],
      ),
    );
  }
}

class PackComponent extends StatelessWidget {
  final Color cor;
  final double altura;
  final double comprimento;
 
  PackComponent({required this.cor,required this.altura,required this.comprimento});

  @override
  Widget build(BuildContext context) {
    return Container(     
      color: cor,
      width: altura,
      height: comprimento,
    );
  }
}
