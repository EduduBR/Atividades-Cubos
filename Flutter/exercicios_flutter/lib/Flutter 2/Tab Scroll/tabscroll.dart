import 'package:flutter/material.dart';

void main() => runApp(const Mytabfixa());



class Mytabfixa extends StatefulWidget {
  const Mytabfixa({super.key});

  @override
  State<Mytabfixa> createState() => _MytabfixaState();
}

class _MytabfixaState extends State<Mytabfixa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 9,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Tab Scroll',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                centerTitle: true,
                titleSpacing: 00.0,
                toolbarHeight: 60.2,
                elevation: 30.00,
                backgroundColor: Colors.deepPurple[800],
                bottom: const TabBar(
                  tabs: [
                    Text('Tab1'),
                    Text('Tab2'),
                    Text('Tab3'),
                    Text('Tab4'),
                    Text('Tab5'),
                    Text('Tab6'),
                    Text('Tab7'),
                    Text('Tab8'),
                    Text('Tab9'),
                  ],
                  isScrollable: true,
                ),
              ),
              body: TabBarView(
                children: [
                  PackContainers(
                      cor: Colors.deepPurple.shade200, texto: 'Tab1'),
                  PackContainers(
                      cor: Colors.deepOrange.shade100, texto: 'Tab2'),
                  PackContainers(
                      cor: Colors.deepPurple.shade200, texto: 'Tab3'),
                  PackContainers(
                      cor: Colors.deepOrange.shade100, texto: 'Tab4'),
                  PackContainers(
                      cor: Colors.deepPurple.shade200, texto: 'Tab5'),
                  PackContainers(
                      cor: Colors.deepOrange.shade100, texto: 'Tab6'),
                  PackContainers(
                      cor: Colors.deepPurple.shade200, texto: 'Tab7'),
                  PackContainers(
                      cor: Colors.deepOrange.shade100, texto: 'Tab8'),
                  PackContainers(
                      cor: Colors.deepPurple.shade200, texto: 'Tab9'),
                ],
              ),
            )));
  }
}

class PackContainers extends StatelessWidget {
  final Color cor;
  final String texto;

  const PackContainers({super.key, required this.cor, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: cor,
        child: Center(
          child: Text(texto,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
