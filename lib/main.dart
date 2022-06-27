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

  static const teclado = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['*', '0', '#']
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ...teclado.map(
            (linha) => Row(
              children: [
                ...linha.map(
                  (digito) => ElevatedButton(
                    onPressed: () => print(digito),
                    child: Text(digito),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
