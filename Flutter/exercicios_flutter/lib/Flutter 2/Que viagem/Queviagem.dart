import 'package:exercicios_flutter/Flutter%202/Que%20viagem/textos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyTravol());

class MyTravol extends StatefulWidget {
  const MyTravol({super.key});

  @override
  State<MyTravol> createState() => _MyTravolState();
}

class _MyTravolState extends State<MyTravol> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(' Que Viagem! Turismo ',
                style: GoogleFonts.notoSerif(fontSize: 25)),
            centerTitle: true,
            titleSpacing: 00.0,
            toolbarHeight: 60.2,
            elevation: 30.00,
            backgroundColor: const Color.fromARGB(255, 87, 19, 19),
            bottom: TabBar(
              tabs: [
                Column(
                  children: const [
                    Icon(Icons.airplane_ticket_outlined,
                        color: Color.fromARGB(255, 170, 141, 45)),
                    Text('Voos')
                  ],
                ),
                Column(children: const [
                  Icon(Icons.luggage_outlined,
                      color: Color.fromARGB(255, 170, 141, 45)),
                  Text('Passeios')
                ]),
                Column(
                  children: const [
                    Icon(Icons.explore_outlined,
                        color: Color.fromARGB(255, 170, 141, 45)),
                    Text('Mapa')
                  ],
                ),
              ],
              indicatorColor: const Color.fromARGB(255, 170, 141, 45),
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(45),
                    child: Column(
                      children: [
                        Text('Partida',
                            style: GoogleFonts.notoSerif(fontSize: 30)),
                        Text(
                          'Outubro 31,2022',
                          style: GoogleFonts.notoSerif(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'GRU',
                            style: GoogleFonts.notoSerif(fontSize: 50),
                          ),
                          Text(
                            'Guarulhos',
                            style: GoogleFonts.notoSerif(fontSize: 20),
                          )
                        ],
                      ),
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2685/2685659.png',
                        scale: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            'OPO',
                            style: GoogleFonts.notoSerif(fontSize: 50),
                          ),
                          Text(
                            'Porto, Portugal',
                            style: GoogleFonts.notoSerif(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Card(
                    margin: const EdgeInsets.only(top: 60),
                    color: const Color.fromARGB(255, 170, 141, 45),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/202/202928.png',
                      scale: 3,
                    ),
                  ),
                ],
              ),
              ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  Column(
                    children: [
                      Text('Pontos turísticos do Porto',
                          style: GoogleFonts.breeSerif(fontSize: 28)),
                      const Divider(
                        color: Color.fromARGB(255, 87, 19, 19),
                        indent: 10,
                        endIndent: 10,
                        thickness: 4,
                      ),
                      Text('Ponte Dom Luiz I',
                          style: GoogleFonts.lobster(
                              fontSize: 35,
                              color: const Color.fromARGB(255, 170, 141, 45))),
                      Image.network(Viagem.imagem1),
                      Text(
                        Viagem.texto1,
                        style: GoogleFonts.breeSerif(
                          fontSize: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 4,
                        color: Color.fromARGB(255, 87, 19, 19),
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text(
                        'Igreja e Torre dos Clérigos',
                        style: GoogleFonts.lobster(
                            fontSize: 35,
                            color: const Color.fromARGB(255, 170, 141, 45)),
                      ),
                      Image.network(Viagem.imagem2),
                      Text(
                        Viagem.texto2,
                        style: GoogleFonts.breeSerif(
                          fontSize: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 4,
                        color: Color.fromARGB(255, 87, 19, 19),
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text('Livraria Lello',
                          style: GoogleFonts.lobster(
                              fontSize: 35,
                              color: const Color.fromARGB(255, 170, 141, 45))),
                      Image.network(Viagem.imagem3),
                      Text(
                        Viagem.texto3,
                        style: GoogleFonts.breeSerif(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.network('https://i.imgur.com/qVbQ7ho.png'),
            ],
          ),
        ),
      ),
    );
  }
}
