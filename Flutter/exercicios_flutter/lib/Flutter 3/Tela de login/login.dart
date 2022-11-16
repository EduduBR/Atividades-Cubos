import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: Mylogin()));

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  ///Converte a primeira letra em maiuscula
}

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});
  @override
  State<Mylogin> createState() => _MyloginState();
}

bool obscuretext = true;
var namecheck = TextEditingController();
var senha = TextEditingController();

class _MyloginState extends State<Mylogin> {
  final entryname = 'Maria'; //simula o banco de dados
  final entrypassword = 'maria123';

  void mensagem() {
    String retorno1 = namecheck.text;
    String retorno2 = retorno1.capitalize();
    var texto1 = '';
    String retorno3 = senha.text;

    if (retorno2 == entryname && retorno3 == entrypassword) {
      texto1 = '$entryname está logada no sistema';
    } else {
      texto1 = 'Usuario invalido';
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alerta',
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
          content: Text('Você ainda nao digitou seu login',
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
              leadingWidth: 80,
              leading: const Icon(Icons.login, size: 60),
              title: Text('Login', style: GoogleFonts.crimsonPro(fontSize: 40)),
              toolbarHeight: 80.2,
              elevation: 40.00,
              backgroundColor: Colors.blue.shade800,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          body: ListView(
            children: [
              const SizedBox(height: 80),
              Box(namecheck, 'Digite seu nome de usuário'),
              const SizedBox(height: 50),
              Box2(senha, "Digite sua senha", obscuretext),
              Container(
                margin: const EdgeInsets.all(40),
                child: Builder(
                  builder: (context) {
                    return ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: const Size(0, 100),
                          backgroundColor: Colors.blue.shade700),
                      onPressed: () {
                        final formState = Form.of(context);
                        if (formState != null && formState.validate()) {
                          mensagem();
                        } else {
                          error();
                        }
                      },
                      child: Text('Verificar',
                          style: GoogleFonts.crimsonPro(fontSize: 40)),
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
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
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

class Box2 extends StatefulWidget {
  final controlador;
  String label;
  bool onoff;
  Box2(this.controlador, this.label, this.onoff, {super.key});

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
              border: const OutlineInputBorder(gapPadding: 40),
              labelText: widget.label)
          .copyWith(
              suffixIcon: IconButton(
                  onPressed: () => setState(() {
                        obscuretext = !obscuretext;
                      }),
                  icon: obscuretext
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off))),
      controller: widget.controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscuretext,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return "Campo Obrigatório";
        }
        return null;
      },
    );
  }
}
