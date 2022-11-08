import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyInfiniteList());

class MyInfiniteList extends StatefulWidget {
  const MyInfiniteList({super.key});

  @override
  State<MyInfiniteList> createState() => _MyInfiniteListState();
}

class _MyInfiniteListState extends State<MyInfiniteList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista Infinita',
              style: GoogleFonts.crimsonPro(fontSize: 40)),
          centerTitle: true,
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          elevation: 30.00,
          backgroundColor: Color.fromARGB(255, 93, 173, 248),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1000,
                itemBuilder: ((context, index) {
                  return MyCard(index);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final int index;
  const MyCard(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color.fromARGB(172, 255, 255, 255),
        child: ListTile(
          textColor: Colors.blue.shade900,
          leading: Icon(
            Icons.star,
            color: Colors.amber.shade400,
          ),
          title: Text(
            'Item n° $index',
            style: GoogleFonts.notoSerif(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
