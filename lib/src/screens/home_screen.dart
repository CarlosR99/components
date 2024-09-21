import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: const Color.fromARGB(255, 46, 184, 147),
        elevation: 25,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: Text('Item $index'),
          onTap: () {
            print('Item $index');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 5,
      ),
    );
  }
}
