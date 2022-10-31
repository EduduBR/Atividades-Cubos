import 'package:exercicios_flutter/Flutter%202/Catioro%E2%80%99s%20List/imagensnet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Mydog());

final nomes = [
  Name.dachshund,
  Name.golden,
  Name.bulldog,
  Name.pug,
  Name.spaniel,
  Name.husky,
  Name.collie,
  Name.beagle,
  Name.weimaraner,
  Name.dalmata
];

class Mydog extends StatefulWidget {
  const Mydog({super.key});

  @override
  State<Mydog> createState() => _MydogState();
}

class _MydogState extends State<Mydog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: nomes.length,
            child: Scaffold(
                appBar: AppBar(
                  title: Row(
                    children: [
                      Text(' Dogs ',
                          style: GoogleFonts.courgette(
                            fontSize: 45,
                          )),
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3002/3002928.png',
                        scale: 8,
                      )
                    ],
                  ),
                  centerTitle: true,
                  titleSpacing: 00.0,
                  toolbarHeight: 60.2,
                  elevation: 30.00,
                  backgroundColor: Colors.green.shade200,
                  bottom: TabBar(
                    tabs: nomes.map((e) => Tab(text: e)).toList(),
                    indicatorColor: Colors.green.shade800,
                    isScrollable: true,
                  ),
                ),
                body: const TabBarView(
                  children: [
                    PackDog(texto: Infodog.dachshund, imagem: Dog.dachshund),
                    PackDog(texto: Infodog.golden, imagem: Dog.golden),
                    PackDog(texto: Infodog.bulldog, imagem: Dog.bulldog),
                    PackDog(texto: Infodog.pug, imagem: Dog.pug),
                    PackDog(texto: Infodog.spaniel, imagem: Dog.spaniel),
                    PackDog(texto: Infodog.husky, imagem: Dog.husky),
                    PackDog(texto: Infodog.collie, imagem: Dog.collie),
                    PackDog(texto: Infodog.beagle, imagem: Dog.beagle),
                    PackDog(texto: Infodog.weimaraner, imagem: Dog.weimaraner),
                    PackDog(texto: Infodog.dalmata, imagem: Dog.dalmata)
                  ],
                ))));
  }
}

class PackDog extends StatelessWidget {
  final String texto;
  final String imagem;

  const PackDog({super.key, required this.texto, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.brown.shade100, Colors.brown.shade900])),
        child: Column(
          children: [
            Card(
              child: Image.network(
                imagem,
                loadingBuilder: ((_, child, loadingProgress) {
                  return loadingProgress != null
                      ? Center(
                          child: CircularProgressIndicator(
                              color: Colors.green.shade700))
                      : child;
                }),
              ),
            ),Divider(color: Colors.green.shade200,thickness: 3,indent: 10,endIndent: 10,),
            Text(texto,
                textAlign: TextAlign.center,
                style: GoogleFonts.breeSerif(
                  fontSize: 24,
                  color: Colors.white,
                )),Divider(color: Colors.green.shade300,thickness: 3,indent: 10,endIndent: 10,)
          ],
        ));
  }
}
