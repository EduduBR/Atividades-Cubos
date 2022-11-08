import 'package:flutter/material.dart';

void main() => runApp(const GradesGrids());

class GradesGrids extends StatefulWidget {
  const GradesGrids({super.key});

  @override
  State<GradesGrids> createState() => _GradesGridsState();
}

class _GradesGridsState extends State<GradesGrids> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.2,
          elevation: 30.00,
          backgroundColor: Colors.green.shade600,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [JokerFace(), JokerNose(), JokerFace()],
            ),
            Expanded(
              child: Container(
                color: Colors.red.shade400,
                child: GridView.count(
                  padding: const EdgeInsets.all(45),
                  crossAxisCount: 6,
                  children: const [
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                    JokerTeeth(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.purple.shade800,
              width: 500,
              height: 145,
              margin: const EdgeInsets.only(top: 40),
              child: RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.send,
                  size: 300,
                  color: Colors.purple.shade300,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JokerFace extends StatelessWidget {
  const JokerFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.arrow_drop_up,
          size: 130,
          color: Colors.blue,
        ),
        Icon(
          Icons.remove_red_eye_outlined,
          size: 80,
          color: Colors.red[900],
        )
      ],
    );
  }
}

class JokerNose extends StatelessWidget {
  const JokerNose({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 180),
      child: const Icon(
        Icons.arrow_downward_rounded,
        size: 80,
      ),
    );
  }
}

class JokerTeeth extends StatelessWidget {
  const JokerTeeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, margin: const EdgeInsets.all(2));
  }
}
