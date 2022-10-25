import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ProgressBar());

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});
  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double valor = 0;
  Color cor = Colors.red;
  String texto = 'Clique para começar o Upload';
  double count = 0;

  void loading() {
    setState(() {
      valor = valor + 0.05;
      count = count + 5;
      if (count > 0.01) {
        texto = '$count';
      }
      if (count >= 50.0) {
        cor = Colors.yellow;
      }
      if (count >= 80.0) {
        cor = Colors.green;
      }
      if (count == 100) {
        texto = 'Upload completo!';
      }
      if (valor > 1.01) {
        count = 0;
        valor = 0;
        cor = Colors.red;
        texto = 'Clique para começar o Upload';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('Upload',
                    style: TextStyle(fontSize: 24, color: Colors.white)),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_circle_up,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                titleSpacing: 00.0,
                toolbarHeight: 60.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 30.00,
                backgroundColor: Colors.green[400]),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  FloatingActionButton.extended(
                    backgroundColor: Colors.green[400],
                    foregroundColor: Colors.white,
                    onPressed: () {
                      loading();
                    },
                    icon: const Icon(Icons.upload),
                    label: const Text('Upload', style: TextStyle(fontSize: 30)),
                  ),
                  Text(
                    '$texto %',
                    style:const TextStyle(fontSize: 20),
                  ),
                  LinearProgressIndicator(
                    value: valor,
                    color: cor,
                  )
                ]
          )
     )
    )
  );
  }
}
