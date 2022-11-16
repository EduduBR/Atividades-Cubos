import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyFocusRandom());

class MyFocusRandom extends StatefulWidget {
  const MyFocusRandom({super.key});

  @override
  State<MyFocusRandom> createState() => _MyFocusRandomState();
}

final FocusNode unitCodeCtrlFocusNode0 = FocusNode();
final FocusNode unitCodeCtrlFocusNode1 = FocusNode();
final FocusNode unitCodeCtrlFocusNode2 = FocusNode();
final FocusNode unitCodeCtrlFocusNode3 = FocusNode();

final lista = [
  unitCodeCtrlFocusNode0,
  unitCodeCtrlFocusNode1,
  unitCodeCtrlFocusNode2,
  unitCodeCtrlFocusNode3
];
var text = 0;

class _MyFocusRandomState extends State<MyFocusRandom> {
  void random() {
    setState(
      () {
        var intValue = Random().nextInt(lista.length);
        lista[intValue].requestFocus();
        text = intValue + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Image.network(
              'https://cdn-icons-png.flaticon.com/512/2015/2015218.png'),
          title: Text('Focus Random',
              style: GoogleFonts.crimsonPro(fontSize: 40, color: Colors.brown)),
          toolbarHeight: 100.2,
          elevation: 40.00,
          backgroundColor: Colors.lightGreen.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text('Sorteado :$text',
                  style: GoogleFonts.crimsonPro(
                      fontSize: 50, color: Colors.brown)),
            ),
            Entry(unitCodeCtrlFocusNode0),
            const SizedBox(height: 10),
            Entry(unitCodeCtrlFocusNode1),
            const SizedBox(height: 10),
            Entry(unitCodeCtrlFocusNode2),
            const SizedBox(height: 10),
            Entry(unitCodeCtrlFocusNode3),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    fixedSize: const Size(0, 100),
                    backgroundColor: Colors.lightGreen.shade300),
                onPressed: () {
                  random();
                },
                child: Text('Sortear',
                    style: GoogleFonts.crimsonPro(
                        fontSize: 50, color: Colors.brown)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  unitCodeCtrlFocusNode2.requestFocus();
class Entry extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var focus;
  Entry(this.focus, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focus,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
          border: OutlineInputBorder(gapPadding: 40),
          labelText: 'SORTEIO'),
    );
  }
}
