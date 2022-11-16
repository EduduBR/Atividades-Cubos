import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: Calculadora()));

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

var valor1 = TextEditingController();
var valor2 = TextEditingController();

int resultado = 0;
String texto = '';

class _CalculadoraState extends State<Calculadora> {
  void tela() {
    setState(
      () {
        int dado1 = int.parse(valor1.text);
        int dado2 = int.parse(valor2.text);
        resultado = dado1 + dado2;
        texto = 'O Resultado é $resultado';
      },
    );
  }

  void clear() {
    setState(() {
      resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Calculadora Simples',
                style:
                    GoogleFonts.crimsonPro(fontSize: 40, color: Colors.black)),
            centerTitle: true,
            titleSpacing: 00.0,
            toolbarHeight: 60.2,
            elevation: 30.00,
            backgroundColor: const Color.fromARGB(255, 74, 247, 97),
          ),
          body: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                child: Text(
                  'O resultado :$resultado',
                  style: GoogleFonts.crimsonPro(fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Box(valor1, 'Primeiro valor'),
              const SizedBox(height: 20),
              Box(valor2, 'Segundo valor'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.all(25),
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            fixedSize: const Size(140, 70),
                            backgroundColor:
                                const Color.fromARGB(255, 74, 247, 97)),
                        onPressed: () {
                          tela();
                        },
                        child: Text('Somar',
                            style: GoogleFonts.crimsonPro(
                                fontSize: 27, fontWeight: FontWeight.bold))),
                  ),
                  Container(margin: EdgeInsets.all(25),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: const Size(140, 70),
                          backgroundColor:
                              const Color.fromARGB(255, 74, 247, 97)),
                      onPressed: () {
                        valor1.clear();
                        valor2.clear();
                        clear();
                      },
                      child: Text(
                        'LIMPAR',
                        style: GoogleFonts.crimsonPro(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final controlador;
  String label;

  Box(this.controlador, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), labelText: label),
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return "Digite um Número";
        }
        return null;
      },
    );
  }
}
