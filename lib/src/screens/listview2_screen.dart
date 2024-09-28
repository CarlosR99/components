import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Liveview2Screen extends StatelessWidget {
  final options = const ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  const Liveview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 2'),
        backgroundColor: const Color.fromARGB(255, 46, 184, 147),
        elevation: 25,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            //final osp = options[index];
            //print(osp);
            if (kDebugMode) {
              print(options[index]);
            }
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
