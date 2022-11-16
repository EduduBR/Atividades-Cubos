import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: MyYearsOld()));

class MyYearsOld extends StatefulWidget {
  const MyYearsOld({super.key});

  @override
  State<MyYearsOld> createState() => _MyYearsOldState();
}

DateTime today = DateTime.now();
var idade = 0;

class _MyYearsOldState extends State<MyYearsOld> {
  Future<void> showdate() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());
    if (picked != null) {
      setState(() {
        idade = today.year - picked.year;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora Simples',
              style: GoogleFonts.crimsonPro(fontSize: 40, color: Colors.black)),
          centerTitle: true,
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          elevation: 30.00,
          backgroundColor: const Color.fromARGB(255, 74, 247, 97),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 250),
                  child: Text('$idade anos de vida ',
                      style: GoogleFonts.crimsonPro(fontSize: 34))),
              Container(
                height: 80,
                width: 200,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 74, 247, 97), // Background color
                  ),
                  onPressed: showdate,
                  child: Text(
                    "Calendario",
                    style: GoogleFonts.crimsonPro(
                        fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
