import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CardNFT());

String nft =
    'https://s2.glbimg.com/TYZmb3MwNw9yAOkcHuP-cJGhtCw=/smart/e.glbimg.com/og/ed/f/original/2022/03/30/bored-ape-nft-1-milhao-gq.jpg';

String monkey =
    'https://cdn.awsli.com.br/600x450/776/776651/produto/85964844/d77af9ce23.jpg';

class CardNFT extends StatelessWidget {
  const CardNFT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                // ignore: prefer_const_constructors
                title: Text('NFT',
                    style: const TextStyle(fontSize: 24, color: Colors.white)),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_chart_rounded,
                    color: Colors.white,
                  ),
                ),
                titleSpacing: 00.0,
                toolbarHeight: 60.2,
                elevation: 30.00,
                backgroundColor: Colors.green[800]),
            body: Container(
                color: Colors.green[300],
                child: Column(children: [
                  Card(
                    child: Image.network('$nft'),
                    elevation: 5,
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text(
                        'Monkey#509',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                    padding: const EdgeInsets.only(right: 180),
                    child: const Text('Bored Ape Yacht Club ',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
                          child: const Text('0.041 ETH',
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(90, 80, 0, 0),
                          child: Row(children: const [
                            Icon(Icons.access_time, color: Colors.white,size: 24,),
                            Text('restam 4 dias',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,))
                          ]))
                    ],
                  ),
                  Divider(
                    color: Colors.brown[300],
                    thickness: 4,
                    height: 80,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(children: [
                    Container(
                        margin:const EdgeInsets.all(2),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(monkey)))),
                    Text('Criado por  ',
                        style:
                            TextStyle(fontSize: 15, color: Colors.green[900])),
                    // ignore: prefer_const_constructors
                    Text('Chico Nascimento',
                        style: const TextStyle(fontSize: 15, color: Colors.white))
                  ])
                ]))));
  }
}
