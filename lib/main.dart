import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List frases = [
    'Importante não é vencer todos os dias, mas lutar sempre.',
    'É melhor conquistar a si mesmo à vencer mil batalhas.',
    'O medo de perder tira a vontade de ganhar.',
    'Perder para a razão, sempre é ganhar',
    'Foco, Força, e Fé.',
    'A vingança nunca é plena, mata a alma e envenena.',
    'Deus sabe de todas as coisas.',
  ];

  String fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(frases.length);
    setState(() {
      fraseGerada = frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            //width: double.infinity,
            // decoration: BoxDecoration(
            //     border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  fraseGerada,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: gerarFrase,
                  child: const Text(
                    "Nova frase",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
