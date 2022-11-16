import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: MyCheck()));

class MyCheck extends StatefulWidget {
  const MyCheck({super.key});
  @override
  State<MyCheck> createState() => _MyCheckState();
}

var yearcheck = TextEditingController();

class _MyCheckState extends State<MyCheck> {
  ///Checando a idade
  void mensagem() {
    int info1 = int.parse(yearcheck.text);
    var texto1 = '';

    if (info1 >= 18 && info1 < 65) {
      texto1 = 'Voto Obrigatório';
    } else if (info1 >= 16 && info1 < 18 || info1 > 65) {
      texto1 = 'Voto facultativo';
    } else if (info1 < 16) {
      texto1 = 'Você ainda não pode votar';
    } else {
      texto1 = 'Você ainda não digitou sua idade';
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Atenção',
              style: GoogleFonts.crimsonPro(fontSize: 40, color: Colors.brown)),
          content: Text(texto1,
              style: GoogleFonts.crimsonPro(fontSize: 20, color: Colors.brown)),
          actions: [
            TextButton(
                onPressed: Navigator.of(context).pop, child: const Text('Okay'))
          ],
        );
      },
    );
  }

  void error() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Atenção'),
          content: Text('Você ainda nao digitou sua idade',
              style: GoogleFonts.crimsonPro(fontSize: 20, color: Colors.brown)),
          actions: [
            TextButton(
                onPressed: Navigator.of(context).pop, child: const Text('Okay'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1503/1503355.png'),
              title: Text('Verificar Idade',
                  style: GoogleFonts.crimsonPro(
                      fontSize: 40, color: Colors.brown)),
              toolbarHeight: 100.2,
              elevation: 40.00,
              backgroundColor: Colors.yellow.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          body: ListView(
            children: [
              const SizedBox(height: 200),
              Box(yearcheck, 'Digite sua Idade'),
              const SizedBox(height: 100),
              Container(
                margin: const EdgeInsets.all(40),
                child: Builder(
                  builder: (context) {
                    return ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: const Size(0, 100),
                          backgroundColor: Colors.amber.shade200),
                      onPressed: () {
                        final formState = Form.of(context);
                        if (formState != null && formState.validate()) {
                          mensagem();
                        } else {
                          error();
                        }
                      },
                      child: Text('Verificar',
                          style: GoogleFonts.crimsonPro(
                              fontSize: 40, color: Colors.brown)),
                    );
                  },
                ),
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
      decoration: InputDecoration(
          border: const OutlineInputBorder(gapPadding: 40), labelText: label),
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return "Campo Obrigatório";
        }
        return null;
      },
    );
  }
}
