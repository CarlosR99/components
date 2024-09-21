import 'package:flutter/material.dart';

class Liveview1Screen extends StatelessWidget {
  final options = const ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  const Liveview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
        backgroundColor: Colors.red,
        elevation: 25,
      ),
      body: ListView(
        children:  [
          //Text('Hola Mundo'),
          //Text('Hola Mundo'),
          //Text('Hola Mundo'),
          //Text('Hola Mundo'),
          //Text('Hola Mundo'),
          //Text('Hola Mundo')
          ...options.map((system) => ListTile(title: Text(system), 
          trailing: const Icon(Icons.arrow_forward_ios_outlined),))
        ],
      ),
    );
  }
}
