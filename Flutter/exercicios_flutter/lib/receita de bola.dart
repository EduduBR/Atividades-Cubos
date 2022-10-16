import 'package:exercicios_flutter/gold%20coin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ReceitaApp());
}

var bloc = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
          height: 100,
          width: 100,
          color: Colors.green,
          margin: const EdgeInsets.all(15)),
      Container(
          height: 100,
          width: 100,
          color: Colors.brown,
          margin: const EdgeInsets.all(15)),
      Container(
          height: 100,
          width: 100,
          color: Colors.green,
          margin: const EdgeInsets.all(15))
    ]);

class ReceitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title:const Text("Cake"),
              centerTitle: true,
              toolbarHeight: 60.2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 50.00,
              backgroundColor: Colors.greenAccent[400],
            ), //AppBar
            body: Column(
              children: [
                Expanded(
                    child: Image.network(
                        'https://www.oetker.com.br/Recipe/Recipes/oetker.com.br/br-pt/baking/image-thumb__70184__RecipeDetailsLightBox/bolo-com-recheio-de-leite-em-po.webp'
                        )
                      ),bloc],)
                    )
                 );
  }
}
