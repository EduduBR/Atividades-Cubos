import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyRainbow());

class MyRainbow extends StatefulWidget {
  const MyRainbow({super.key});

  @override
  State<MyRainbow> createState() => _MyRainbowState();
}

class _MyRainbowState extends State<MyRainbow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arco-Iris', style: GoogleFonts.crimsonPro(fontSize: 40)),
          centerTitle: true,
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          elevation: 30.00,
          backgroundColor: Colors.deepPurple.shade200,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CoresRainbow(Colors.red, 'Vermelho'),
            CoresRainbow(Colors.orange, 'Laranja'),
            CoresRainbow(Colors.yellow, 'Amarelo'),
            CoresRainbow(Colors.green, 'Verde'),
            CoresRainbow(Colors.blueAccent, 'Azul-Claro'),
            CoresRainbow(Colors.blue.shade800, 'Azul-Escuro'),
            CoresRainbow(Colors.deepPurple.shade600, 'Violeta')
          ],
        ),
      ),
    );
  }
}

class CoresRainbow extends StatelessWidget {
  CoresRainbow(this.cor, this.texto, {super.key});
 
  Color cor;
  String texto;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: cor,
      child: Center(
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            texto,
            style: GoogleFonts.crimsonPro(fontSize: 80, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
