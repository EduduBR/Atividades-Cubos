import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Reservas());
var days = [];

class Reservas extends StatefulWidget {
  const Reservas({super.key});

  @override
  State<Reservas> createState() => _ReservasState();
}

class _ReservasState extends State<Reservas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Hospedagens',
                style:
                    GoogleFonts.crimsonPro(fontSize: 25, color: Colors.white)),
            leading: const Icon(Icons.account_balance_outlined,
                color: Colors.white, size: 45),
            titleSpacing: 00.0,
            toolbarHeight: 60.2,
            elevation: 30.00,
            backgroundColor: Colors.green),
        body: Container(
          color: Colors.green.shade100,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Text('Selecione datas para sua reserva',
                    style:
                        GoogleFonts.anton(fontSize: 23, color: Colors.brown)),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 7,
                children: List.generate(30, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        index == reservados(days, index)
                            ? days.remove(index)
                            : days.add(index);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: index == reservados(days, index)
                              ? Colors.brown.shade300
                              : Colors.green.shade700,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        '${index + 1}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                            fontSize: 18, color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Text('Novembro 2022',
                    style: GoogleFonts.anton(
                        fontSize: 20, color: Colors.brown.shade800)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int reservados(List days, int index) {
  return days.contains(index) ? index : -1;
}
