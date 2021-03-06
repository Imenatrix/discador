import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 01'),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Teclado());
  }
}

class Teclado extends StatelessWidget {
  static const teclado = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['*', '0', '#']
  ];

  const Teclado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.fromLTRB(30, 45, 30, 45),
      child: Wrap(
        spacing: 10,
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Text(
            'Discador...',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
          ),
          ...teclado.map((linha) => Linha(linha: linha))
        ],
      ),
    );
  }
}

class Linha extends StatelessWidget {
  final List<String> linha;

  const Linha({
    required this.linha,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 25,
      children: [...linha.map((digito) => BotaoTeclado(digito: digito))],
    );
  }
}

class BotaoTeclado extends StatelessWidget {
  final String digito;

  const BotaoTeclado({required this.digito, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 35,
      child: ElevatedButton(
        onPressed: () => print(digito),
        child: Text(digito),
      ),
    );
  }
}
