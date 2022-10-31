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
                    title: Text(
                      ' Que Viagem! Turismo ',
                      style: GoogleFonts.notoSerif(
                        fontSize: 25,
                      ),
                    ),
                    centerTitle: true,
                    titleSpacing: 00.0,
                    toolbarHeight: 60.2,
                    elevation: 30.00,
                    backgroundColor: const Color.fromARGB(255, 87, 19, 19),
                    bottom: TabBar(
                      tabs: [
                        Column(children: const [
                          Icon(Icons.airplane_ticket_outlined,
                              color: Color.fromARGB(255, 170, 141, 45)),
                          Text('Voos')
                        ]),
                        Column(children: const [
                          Icon(Icons.luggage_outlined,
                              color: Color.fromARGB(255, 170, 141, 45)),
                          Text('Passeios')
                        ]),
                        Column(children: const [
                          Icon(Icons.explore_outlined,
                              color: Color.fromARGB(255, 170, 141, 45)),
                          Text('Mapa')
                        ])
                      ],
                      indicatorColor: const Color.fromARGB(255, 170, 141, 45),
                    )),
                body: TabBarView(children: [
                  Center(
                      child: Column(children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Column(children: [
                          Text('Partida',
                              style: GoogleFonts.notoSerif(
                                fontSize: 30,
                              )),
                          Text('Outubro 31,2022',
                              style: GoogleFonts.notoSerif(
                                fontSize: 20,
                              ))
                        ])),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(55, 50, 0, 0),
                            child: Column(children: [
                              Text('GRU',
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 50,
                                  )),
                              Text('Guarulhos',
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 20,
                                  ))
                            ])),
                        const Icon(
                          Icons.connecting_airports_outlined,
                          size: 80,
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Column(children: [
                              Text('OPO',
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 50,
                                  )),
                              Text('Porto, Portugal',
                                  style: GoogleFonts.notoSerif(
                                    fontSize: 20,
                                  ))
                            ]))
                      ],
                    )
                  ])),
                  ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      Column(
                        children: [
                          Text('Pontos turísticos do Porto',
                              style: GoogleFonts.breeSerif(
                                fontSize: 28,
                              )),
                          const Divider(
                            color: Color.fromARGB(255, 87, 19, 19),
                            indent: 10,
                            endIndent: 10,thickness: 4,
                          ),
                          Text('Ponte Dom Luiz I',
                              style: GoogleFonts.lobster(
                                fontSize: 35,color:  const Color.fromARGB(255, 170, 141, 45)
                              )),
                          Image.network(
                              'https://viagemeturismo.abril.com.br/wp-content/uploads/2017/05/istock-533960357-1.jpg?quality=70&strip=info&w=1024&resize=1200,800'),
                          Text(Viagem.texto1,
                              style: GoogleFonts.breeSerif(
                                fontSize: 25,
                              )),
                          const Divider(thickness: 4,
                            color: Color.fromARGB(255, 87, 19, 19),
                            indent: 10,
                            endIndent: 10,
                          ),Text('Igreja e Torre dos Clérigos', style: GoogleFonts.lobster(
                                fontSize: 35,color:  const Color.fromARGB(255, 170, 141, 45)
                              )),
                          Image.network(
                              'https://s7a5n8m2.stackpathcdn.com/wp-content/uploads/2015/09/1-5.jpg'),
                              Text(Viagem.texto2,style: GoogleFonts.breeSerif(
                                fontSize: 25,
                              )), const Divider(thickness: 4,
                            color: Color.fromARGB(255, 87, 19, 19),
                            indent: 10,
                            endIndent: 10,
                          ),Text('Livraria Lello', style: GoogleFonts.lobster(
                                fontSize: 35,color:  const Color.fromARGB(255, 170, 141, 45)
                              )),
                          Image.network(
                              'https://mapadomundo.org/wp-content/uploads/2017/01/Lello-capa.jpg'),
                              Text(Viagem.texto3,style: GoogleFonts.breeSerif(
                                fontSize: 25,
                              ))
                        ],
                      )
                    ],
                  ),Image.network('https://i.imgur.com/qVbQ7ho.png'),
                ]))));
  }
}
