import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: DarkMode()));

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isSwitched = false;
  int selectedCard = -1;
  //Lista com Strings a serem mostrados
  final List<Widget> items = <Widget>[
    Text("Luzes",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white)),
    Text("Temperatura",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white)),
    Text("Lavadora",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white)),
    Text("Segurança",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white)),
    Text("Wifi",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white)),
    Text("Televisor",
        style: GoogleFonts.crimsonPro(fontSize: 30, color: Colors.white))
  ];
  //Lista com Icones a serem mostrados
  final List<Icon> icone = <Icon>[
    const Icon(Icons.lightbulb, size: 70),
    const Icon(Icons.thermostat, size: 70),
    const Icon(Icons.water_sharp, size: 70),
    const Icon(Icons.security, size: 70),
    const Icon(Icons.wifi, size: 70),
    const Icon(Icons.tv, size: 70)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Home',
      theme: isSwitched
          ? ThemeData(
              textTheme: const TextTheme(
                  headline1: TextStyle(color: Colors.deepPurpleAccent),
                  headline2: TextStyle(color: Colors.deepPurpleAccent),
                  bodyText2: TextStyle(color: Colors.deepPurpleAccent)),
              primarySwatch: Colors.deepPurple,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.deepPurple.shade400))
          : ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.blueGrey,
              iconTheme: IconThemeData(color: Colors.blue.shade400),
              textTheme: TextTheme(
                  headline1: TextStyle(color: Colors.blue.shade200),
                  headline2: TextStyle(color: Colors.blueAccent.shade200),
                  bodyText2: TextStyle(color: Colors.blueAccent.shade200)),
            ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Sweet Home',
                style: GoogleFonts.crimsonPro(fontSize: 40))),
        body: Column(
          children: [
            Row(children: const [
              Icon(Icons.house_outlined, size: 100),
              Title()
            ]), //Cabeçario
            Expanded(
              child: GridView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.5)),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = index;
                      });
                    },
                    child: Card(
                      color: selectedCard == index
                          ? Theme.of(context).colorScheme.background
                          : Colors.black.withOpacity(0.1),
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [icone[index], items[index]],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(
              () {
                isSwitched = value;
              },
            );
          },
        ),
      ),
    );
  }
}



class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Sweet Home', style: GoogleFonts.crimsonPro(fontSize: 50)),
        Text(
          'oque gostaria de monitorar',
          style: GoogleFonts.crimsonPro(fontSize: 20),
        )
      ],
    );
  }
}
